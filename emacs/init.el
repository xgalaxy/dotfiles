(defvar myemacs-core-dir
  (concat user-emacs-directory
          (convert-standard-filename "core/")))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(setq package-user-dir (expand-file-name "packages" user-emacs-directory))

(add-to-list 'load-path myemacs-core-dir)

(setq load-prefer-newer t)
(setq gc-cons-threshold 50000000)
(setq large-file-warning-threshold 100000000)

(require 'init-packages)
(require 'init-interface)
(require 'init-editor)
(require 'init-osx)

(when (file-exists-p custom-file)
  (load custom-file))
