;;
;; Emacs Initialization
;;

(require 'package)


;; Initialize and refresh package system.
(add-to-list 'package-archives
			 '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

;; Define packages to install.
(defvar rdb/packages
  '(ace-jump-mode auto-complete evil evil-leader evil-numbers gist
	idle-highlight-mode ido-ubiquitous lua-mode magit markdown-mode
	rainbow-mode smartparens smart-tabs-mode smex undo-tree yasnippet
	zenburn-theme zencoding-mode))

;; Install packages.
(dolist (p rdb/packages)
  (when (not (package-installed-p p))
	(package-install p)))

;; Define load paths.
(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/vendor/evil-surround")

;; Install settings.
(mapc 'require
   '(rdb-ui rdb-editor rdb-smarttabs rdb-parens rdb-ido rdb-evil rdb-c))
