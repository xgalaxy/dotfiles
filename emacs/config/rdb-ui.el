;;
;; UI settings
;;


;; Disable ui features
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
(when (fboundp 'blink-cursor-mode)
  (blink-cursor-mode -1))

;; Title bar
(setq frame-title-format "emacs %b - <%f>"
	  icon-title-format "emacs %b")

;; Disable startup / welcome screen
(setq inhibit-startup-screen t)

;; disable dialog boxes
(setq use-dialog-box nil)

;; Various indicators
(global-linum-mode 1)
(global-hl-line-mode)
(fringe-mode 4)
(setq visual-line-fringe-indicators
	  '(left-curly-arrow right-curly-arrow))
(setq-default fill-column 100)

;; Default cursor
(setq-default cursor-type 'block)

;; Enable mode aware fonts
(global-font-lock-mode 1)

;; Mode line
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; Use zenburn theme
(load-theme 'zenburn t)


;;
(provide 'rdb-ui)
