;;
;; Evil settings
;;

(require 'evil)
(require 'evil-leader)
(require 'evil-numbers)


(setq evil-find-skip-newlines t)
(setq evil-move-cursor-back t
	  evil-cross-lines t
	  evil-intercept-esc 'always)
(setq eil-mode-line-format nil)
(setq evil-leader/leader ","
	  evil-leader/in-all-states t)

(evil-set-toggle-key "<pause>")
(evil-mode 1)


;;
(provide 'rdb-evil)
