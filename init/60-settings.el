;; Remove splash screen, because there is no working minor modes
(setq inhibit-startup-screen t)

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

(provide '60-settings)
