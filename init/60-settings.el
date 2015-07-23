;; Remove splash screen, because there is no working minor modes
(setq inhibit-startup-screen t)

;; Delete trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide '60-settings)
