;;
;; Evil settings
;;

(require 'evil)
(require 'evil-leader)
(require 'evil-numbers)
(require 'surround)


(setq evil-auto-indent t)
(setq evil-shift-width 4)

(setq evil-repeat-move-cursor t)
(setq evil-find-skip-newlines t)
(setq evil-move-cursor-back t)
(setq evil-want-fine-undo nil)

(setq evil-regexp-search t)
(setq evil-search-wrap t)
(setq evil-flash-delay 2)

(setq evil-show-paren-range 0)

(setq evil-want-C-i-jump t)
(setq evil-want-C-u-scroll nil)

(setq evil-leader/leader ",")
(setq evil-leader/in-all-states t)

(evil-set-toggle-key "<f8>")

(evil-mode 1)
(global-surround-mode 1)


;;
(provide 'rdb-evil)
