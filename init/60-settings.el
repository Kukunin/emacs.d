;; Remove splash screen, because there is no working minor modes
(setq inhibit-startup-screen t)

;; Delete trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Don't use spring for rspec
(setq rspec-use-spring-when-possible nil)

(provide '60-settings)
