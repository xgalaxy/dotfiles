(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(defun myemacs/require-package (package)
  "Install a package unless it is already installed."
  (unless (package-installed-p package)
    (package-refresh-contents)
    (package-install package))
  (require package))

(myemacs/require-package 'use-package)

;; wanted
;;ace-jump-mode
;;ag
;;diminish
;;expand-region
;;flycheck
;;helm
;;idle-highlight-mode
;;magit
;;projectile
;;smex
;;yasnippet

;; unsure about:
;; color-identifiers-mode or rainbow-identifiers?
;; better-defaults
;; paraedit or smartparens?
;; auto-complete-clang
;; auto-complete
;; popup

;; needed for omnisharp:
;; omnisharp
;; csharp-mode
;; auto-complete
;; company
;; popup
;; flycheck
;; helm

(provide 'init-packages)
