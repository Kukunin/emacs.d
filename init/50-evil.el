(require-package 'evil)

;; Enable C-u for evil
(setq evil-want-C-u-scroll t)

;; Fix for >> and << in ruby-mode
(add-hook 'ruby-mode-hook
  (function (lambda ()
          (setq evil-shift-width ruby-indent-level))))

(evil-mode 1)

(provide '50-evil)
