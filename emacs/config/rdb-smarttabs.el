;;
;; SmartTab settings
;;

(require 'smart-tabs-mode)


;; Tab settings
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default tab-stop-list (number-sequence 4 100 4))
(setq tab-always-indent 'complete)

(smart-tabs-insinuate 'c 'javascript 'ruby)
(smart-tabs-guess-insinuate '(lua))


;;
(provide 'rdb-smarttabs)
