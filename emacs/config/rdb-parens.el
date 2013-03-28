;;
;; Parentheses settings

(require 'smartparens)
(require 'smartparens-config)
;;(require 'zenburn)


;; Enable smart parens
(smartparens-global-mode t)

;; Display settings
(setq show-paren-style 'expression)
(show-smartparens-global-mode t)
(show-paren-mode t)

;; Markdown settings
(sp-with-modes '(markdown-mode gfm-mode rst-mode)
			   (sp-local-pair "`" "`")
			   (sp-local-pair "*" "*"))

;; Html settings
(sp-with-modes '(html-mode sgml-mode)
			   (sp-local-pair "<" ">"))


;;
(provide 'rdb-parens)
