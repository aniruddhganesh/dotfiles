;; Bloat-Interface
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(defalias 'yes-or-no-p 'y-or-n-p)

;; Using doom-theme for tokyo-night
(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  (load-theme 'doom-tokyo-night t))

;; Font
(set-frame-font "JetBrainsMono NF 10" nil t)
;; Line numbers - Relative
(global-display-line-numbers-mode 1)
(menu-bar-display-line-numbers-mode 'relative)
