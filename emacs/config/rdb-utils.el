;;
;; Misc utilities
;;

(require 'cl)
(require 'package)


(defun rdb/init-package-system ()
  "Initialize the package system."
  (add-to-list 'package-archives
			   '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (package-initialize))

(defun rdb/packages-installed-p (the-packages)
  "Are all the packages installed?"
  (loop for p in the-packages
		when (not (package-installed-p p)) do (return nil)
		finally (return t)))

(defun rdb/install-packages (the-packages)
  "Install the packages."
  (unless (rdb/packages-installed-p the-packages)
	(package-refresh-contents)
	(dolist (p the-packages)
	  (when (not (package-installed-p p))
		(package-install p)))))


;;
(provide 'rdb-utils)
