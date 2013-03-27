;;
;; SmartParens settings

(require 'smartparens)
(require 'smartparens-config)


;; Enable
(smartparens-global-mode t)

;; Highlight matching pairs
(show-smartparens-global-mode t)

;; Markdown settings
(sp-with-modes '(markdown-mode gfm-mode rst-mode)
			   (sp-local-pair "`" "`")
			   (sp-local-pair "*" "*"))

;; Html settings
(sp-with-modes '(html-mode sgml-mode)
			   (sp-local-pair "<" ">"))


;;
(provide 'rdb-smartparens)
