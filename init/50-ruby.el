;; RSpec
(require-package 'rspec-mode)
;; Enhaced Ruby Mode
(require-package 'enh-ruby-mode)
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

;; Don't use spring for rspec
(setq rspec-use-spring-when-possible nil)

;; Don't use deep indent
;; https://github.com/zenspider/enhanced-ruby-mode/issues/87
(setq enh-ruby-deep-indent-paren nil)

;; Smartparens is minor mode for Emacs that deals with parens pairs and tries to be smart about it
(require-package 'smartparens)

(require 'smartparens-config)

;; Ruby tools
(require-package 'ruby-tools)
(add-hook 'enh-ruby-mode-hook 'ruby-tools-mode)

(add-hook 'enh-ruby-mode-hook
  (function (lambda ()
           (setq projectile-tags-command "ctags --languages=ruby -Re -f \"%s\" %s $(bundle list --paths)"))))

(provide '50-ruby)
