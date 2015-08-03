(require-package 'evil)

;; Enable C-u for evil
(setq evil-want-C-u-scroll t)

;; Fix for >> and << in ruby-mode
(add-hook 'ruby-mode-hook
  (function (lambda ()
          (setq evil-shift-width ruby-indent-level))))
(add-hook 'enh-ruby-mode-hook
  (function (lambda ()
          (setq evil-shift-width ruby-indent-level))))
;; Enable ggtags for Ruby
(add-hook 'enh-ruby-mode-hook
  (function (lambda ()
           (ggtags-mode 1))))

;; @see https://bitbucket.org/lyro/evil/issue/511/let-certain-minor-modes-key-bindings
(eval-after-load 'ggtags
  '(progn
     (evil-make-overriding-map ggtags-mode-map 'normal)
     ;; force update evil keymaps after ggtags-mode loaded
     (add-hook 'ggtags-mode-hook #'evil-normalize-keymaps)))

(evil-mode 1)

(provide '50-evil)
