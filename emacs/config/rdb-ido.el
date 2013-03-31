;;
;; Ido settings
;;


(require 'ido-ubiquitous)


(ido-mode t)
(ido-everywhere t)
(ido-ubiquitous t)

(setq ido-enable-prefix nil)
(setq ido-use-virtual-buffers t)
(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)
(setq ido-use-filename-at-point 'guess)
(setq ido-default-file-method 'selected-window)



;;
(provide 'rdb-ido)
