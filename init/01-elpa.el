(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
      package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
      package-archives)
(package-initialize)

;;; On-demand installation of packages
(defun require-package (package &optional min-version)
  "Install given PACKAGE, optionally requiring MIN-VERSION."
  (if (package-installed-p package min-version)
    t
    (progn
      (package-refresh-contents)
      (package-install package))))


(provide '01-elpa)
