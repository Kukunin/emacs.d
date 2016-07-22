;; Enable yasnippet
(require-package 'yasnippet)
(yas-global-mode 1)

;; AutoComplete
(require-package 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(setq-default ac-sources (push 'ac-source-yasnippet ac-sources))

;; ac-etags
(require-package 'ac-etags)
(eval-after-load "etags"
  '(progn
      (ac-etags-setup)))

;; Enable etags for Ruby
(add-hook 'ruby-mode-hook 'ac-etags-ac-setup)

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
