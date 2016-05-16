;; -*- mode: emacs-lisp -*-
(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-additional-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-delete-orphan-packages t

   dotspacemacs-configuration-layers
   '((auto-completion
      :variables
      auto-completion-private-snippets-directory "~/.spacemacs.d/snippets/"
      :disabled-for org)
     better-defaults
     (c-c++ :variables c-c++-enable-clang-support t)
     emacs-lisp
     git
     (ibuffer :variables ibuffer-group-buffers-by nil)
     markdown
     org
     osx
     ranger
     semantic
     (syntax-checking :variables syntax-checking-enable-by-default nil)
     (version-control :variables version-control-diff-tool 'diff-hl))))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https nil
   dotspacemacs-elpa-timeout 10
   dotspacemacs-check-for-update t
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner nil
   dotspacemacs-startup-lists '(recents bookmarks projects)
   dotspacemacs-startup-recent-list-size 5
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes '(spacemacs-light
                         spacemacs-dark)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Source Code Pro"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab t
   dotspacemacs-command-key ":"
   dotspacemacs-remap-Y-to-y$ t
   dotspacemacs-default-layout-name "Home"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 10
   dotspacemacs-use-ido nil
   dotspacemacs-helm-resize t
   dotspacemacs-helm-no-header t
   dotspacemacs-helm-position 'bottom
   dotspacemacs-enable-paste-micro-state nil
   dotspacemacs-which-key-delay 1
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers nil
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  (setq-default

   ;; Misc.
   vc-follow-symlinks t
   ring-bell-function 'ignore
   require-final-newline t
   indent-tabs-mode nil

   ;; Backups
   make-backup-files nil

   ;; Whitespace
   whitespace-style '(face tabs tab-mark newline-mark)
   whitespace-display-mappings '((newline-mark 10 [172 10]) (tab-mark 9 [9655 9]))

   ;; Flycheck
   flycheck-check-syntax-automatically '(save mode-enabled)

   ;; Avy
   avy-all-windows 'all-frames

   ;; Ranger
   ranger-override-dired t
   ))

(defun dotspacemacs/user-config ()
  (setq-default

   ;; Settings
   tab-width 4
   helm-echo-input-in-header-line nil
   ))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
