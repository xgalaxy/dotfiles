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

(defun rdb/add-subfolders-to-load-path (parent-dir)
  "Add parent and all subfolders to load path."
  (add-to-list 'load-path parent-dir)
  (dolist (f (directory-files parent-dir))
	(let ((name (expand-file-name f parent-dir)))
	  (when (and (file-directory-p name)
				 (not (equal f ".."))
				 (not (equal f ".")))
		(add-to-list 'load-path name)))))


;;
(provide 'rdb-utils)
