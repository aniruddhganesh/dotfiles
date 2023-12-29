;; Package Config
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; use-package to simplify the config file
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure 't)

;; Load other files now
(load-file "~/.config/emacs/theme.el")
(load-file "~/.config/emacs/packages.el")
(load-file "~/.config/emacs/keys.el")
(load-file "~/.config/emacs/extras.el")

;; Temporary files
(setq lock-file-name-transforms `((".*" "/tmp/emacs-lockfiles/" t)))
(setq auto-save-file-name-transforms `((".*", temporary-file-directory t)))
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq make-backup-files t)

;; Options
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-indent-guides-method 'character)
 '(package-selected-packages
   '(tree-sitter use-package swiper lsp-ui highlight-indent-guides doom-themes company ccls)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
