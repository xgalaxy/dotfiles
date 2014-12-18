;; On OSX, Emacs doesn't use the shell PATH
(use-package exec-path-from-shell
             :ensure t
             :config
             (progn
               (exec-path-from-shell-initialize)))

;; On OSX, proced-mode doesn't work. So use vkill instead
(use-package vkill
             :ensure t
             :bind ("C-x p" . vkill))

(provide 'init-osx)
