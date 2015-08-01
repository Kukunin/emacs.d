(require-package 'auto-complete)

;; Configuration
(require 'auto-complete-config)
(ac-config-default)

;;; Better ido
(require-package 'flx-ido)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(provide '55-autocomplete)