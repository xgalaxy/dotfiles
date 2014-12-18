;; don't use tabs to indent
(setq-default indent-tabs-mode nil)

;; set tab width to 4 spaces
(setq-default tab-width 4)

;; new line at end of file
(setq require-final-newline t)

;; store all backup and autosave files in the temp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; revert buffers when files are change externally
(global-auto-revert-mode t)

;; Undo-tree
(use-package undo-tree
             :ensure t
             :config
             (progn
               (setq undo-tree-history-directory-alist
                     `((".*" . ,temporary-file-directory)))
               (setq undo-tree-auto-save-history t)
               (global-undo-tree-mode)
               (diminish 'undo-tree-mode)))

;; Hippie Expand
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

;; smart tab behavior - indent or auto completion
(setq tab-always-indent 'complete)


(provide 'init-editor)
