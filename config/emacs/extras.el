;; Compile command for C files - Tests for make
(add-hook 'c-mode-hook
	  (lambda ()
	    (unless (file-exists-p "Makefile")
	      (setq-local compile-command
			  (concat "make "
				  (if buffer-file-name
				      (shell-quote-argument
				       (file-name-sans-extension buffer-file-name))))))))

;; Compilation in Minibuffer
(setq split-height-threshold nil) ; Disable splitting vertically
(setq split-width-threshold 0)   ; Disable splitting horizontally
(setq compilation-finish-functions
      (lambda (buf str)
        (if (null (string-match ".*exited abnormally.*" str))
            ;; No errors, quit the compilation buffer.
            (progn
              (message "Compilation successful")
              (run-at-time 1 nil 'delete-windows-on buf)
              (bury-buffer "*compilation*")
              (setq compilation-exit-code 0))
          ;; There were errors; switch to the compilation buffer.
          (message "There were errors. Press C-x ` to visit the compilation buffer.")
          (setq compilation-exit-code 1))))
