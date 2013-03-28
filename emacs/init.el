;;
;; My config
;;


;; Bootstrap config
(add-to-list 'load-path "~/.emacs.d/config")
(require 'rdb-utils)

;; Load vendor
(rdb/add-subfolders-to-load-path "~/.emacs.d/vendor")

;; Load packages
(defvar rdb/packages
  '(ace-jump-mode auto-complete evil evil-leader evil-numbers gist helm
				  idle-highlight-mode lua-mode magit markdown-mode
				  rainbow-mode smartparens smart-tabs-mode smex undo-tree
				  yasnippet zenburn-theme zencoding-mode))
(rdb/init-package-system)
(rdb/install-packages rdb/packages)

;; Load settings
(defvar rdb/settings
  '(rdb-ui rdb-editor rdb-smarttabs rdb-parens rdb-evil rdb-c))
(mapc #'require rdb/settings)
