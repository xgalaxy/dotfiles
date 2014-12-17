(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Startup configs
(require 'init-utils)
(require 'init-site-lisp) ;; Provides package.el
(require 'init-elpa) ;; Installing packages
(require 'init-exec-path) ;; $PATH

;; Feature configs
(require-package 'diminish)
(require-package 'scratch)

(require 'init-frame-hooks)
(require 'init-gui-frames)

;; want:
;; smex
;; expand-region
;; idle-highlight-mode
;; ace-jump-mode
;; yasnippet
;; magit
;; flycheck

;; unsure about:
;; color-identifiers-mode or rainbow-identifiers?
;; better-defaults
;; paraedit or smartparens?
;; auto-complete-clang
;; auto-complete
;; helm
;; popup
;; projectile

;; needed for omnisharp:
;; omnisharp
;; csharp-mode
;; auto-complete
;; company
;; popup
;; flycheck
;; helm

;; Configuration file for the interactive 'customize' interface
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
