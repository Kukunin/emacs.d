(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
      package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
      package-archives)
(package-initialize)

;; Enable C-u for evil
(setq evil-want-C-u-scroll t)
;; Enable fuzzy match for M-x
(setq helm-M-x-fuzzy-match t)

(require 'evil)
(require 'helm)

(evil-mode 1)
(projectile-global-mode)

;; Use helm-M-x
(global-set-key (kbd "M-x") 'helm-M-x)

;; Override evil's C-p
(define-key evil-normal-state-map "\C-p" 'helm-projectile)

;; Remove splash screen, because there is no working minor modes
(setq inhibit-startup-screen t)

(require 'color-theme)
(color-theme-initialize)
(color-theme-charcoal-black)

;; Fix for >> and << in ruby-mode
(add-hook 'ruby-mode-hook
  (function (lambda ()
          (setq evil-shift-width ruby-indent-level))))

;; Delete trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Don't use spring for rspec
(setq rspec-use-spring-when-possible nil)
;; Disable autocompiling for scss-mode
(setq scss-compile-at-save nil)

(provide '01-common)
