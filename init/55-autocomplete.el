(require-package 'auto-complete)

;; Configuration
(require 'auto-complete-config)
(ac-config-default)

;; ac-etags
(require-package 'ac-etags)
(eval-after-load "etags"
  '(progn
      (ac-etags-setup)))

;; Enable etags for Ruby
(add-hook 'enh-ruby-mode-hook 'ac-etags-ac-setup)

;;; Better ido
(require-package 'flx-ido)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; Enable yasnippet
(require-package 'yasnippet)
(require 'yasnippet-bundle)

(provide '55-autocomplete)
