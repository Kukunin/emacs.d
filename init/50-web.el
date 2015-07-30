(require-package 'coffee-mode)
(require-package 'haml-mode)
(require-package 'less-css-mode)
(require-package 'scss-mode)

;; Disable autocompiling for scss-mode
(setq scss-compile-at-save nil)

(setq css-indent-offset 2)

(provide '50-web)
