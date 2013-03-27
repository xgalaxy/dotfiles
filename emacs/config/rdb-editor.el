;;
;; Editor settings
;;

(require 'uniquify)


;; Don't backup
(setq make-backup-files nil)

;; Use UTF-8
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; Buffer handling
(setq uniquify-buffer-name-style 'post-forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")
(put 'dired-find-alternate-file 'disabled nil)

;; Use the system clipboard
(setq x-select-enable-clipboard t)

;; Enable changing starting column
(put 'set-goal-column 'disabled nil)

;; Enable narrowing
(put 'narrow-to-defun 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'noarrow-to-page 'disabled nil)

;; Misc
(setq-default major-mode 'text-mode)
(defalias 'yes-or-no-p 'y-or-n-p)
(transient-mark-mode 1)


;;
(provide 'rdb-editor)
