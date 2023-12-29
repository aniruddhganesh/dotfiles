;; Packages for emacs config

;; Ivy - Fuzzy finding
(use-package ivy
  :ensure t
  :config
  (ivy-mode)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))
(use-package swiper
  :ensure t
  :config
  (global-set-key "\C-s" 'swiper))

;; Tablines
(use-package highlight-indent-guides
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode))

;; LSP
(use-package company
  :config
  (use-package lsp-mode)
  (add-hook 'prog-mode-hook 'company-mode))
;; Treesitter
(use-package tree-sitter)


;; Drag stuff
(use-package drag-stuff)
(drag-stuff-global-mode 1)
