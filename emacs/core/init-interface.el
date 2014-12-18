(let ((no-border '(internal-border-width . 0)))
  (add-to-list 'default-frame-alist no-border)
  (add-to-list 'initial-frame-alist no-border))

;; gui stuff
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'menu-bar-mode)
  (menu-bar-mode +1))
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))
(when (fboundp 'fringe-mode)
  (fringe-mode '(8 . 0)))

(setq use-file-dialog nil)
(setq use-dialog-box nil)

(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)
(setq indicate-empty-lines nil)

(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(setq frame-title-format
      '("" invocation-name " - " (:eval (if (buffer-file-name)
                                          (abbreviate-file-name (buffer-file-name))
                                          "%b"))))

(set-face-attribute 'default nil :height 160)

(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)
(global-hl-line-mode 1)

(fset 'yes-or-no-p 'y-or-n-p)

(use-package zenburn-theme
             :ensure t
             :config
             (progn
               (load-theme 'zenburn t)))

(provide 'init-interface)
