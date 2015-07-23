(require-package 'helm)
(require-package 'projectile)
(require-package 'helm-projectile)

;; Enable fuzzy match for M-x
(setq helm-M-x-fuzzy-match t)

(require 'helm)

(projectile-global-mode)

;; Use helm-M-x
(global-set-key (kbd "M-x") 'helm-M-x)

;; Override evil's C-p
(define-key evil-normal-state-map "\C-p" 'helm-projectile)

(provide '51-helm-projectile)
