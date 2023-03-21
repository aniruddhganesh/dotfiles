(setq inhibit-startup-message t
      initial-scratch-message "Hello World"
      cursor-type 'underline)

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

;; Bloat-Interface
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(defalias 'yes-or-no-p 'y-or-n-p)

;; Theme
(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  (load-theme 'doom-tokyo-night t))
;; Dashboard
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
(setq dashboard-banner-logo-title "Kya Haal")
(setq dashboard-center-content t)
(setq dashboard-startup-banner "~/.emacs.d/banner.jpg")

(set-frame-font "JetBrainsMono NF 11" nil t)
;; RelNumbers
(global-display-line-numbers-mode 1)
(menu-bar-display-line-numbers-mode 'relative)


;; Code Completion
(use-package lsp-mode
  :ensure t
  :config
  (lsp-mode))
(use-package lsp-ui)
(use-package lsp-python-ms)

;; Fuzzy Finding (ivy/swiper)
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

;; Org mode
(defun efs/org-mode-setup ()
  (org-indent-mode)
  (variable-pitch-mode 1)
  (auto-fill-mode 0)
  (visual-line-mode 1)
  (setq evil-auto-indent nil))

(use-package org
  :config
  (setq org-ellipsis " "))
(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("" "" "" )))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-indent-guides-character 97)
 '(highlight-indent-guides-method 'bitmap)
 '(package-selected-packages
   '(company lsp-ui lsp-intellij lsp-ivy lsp-mode swiper use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
