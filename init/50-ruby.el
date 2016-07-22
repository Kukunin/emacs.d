;; RSpec
(require-package 'rspec-mode)

;; Don't use spring for rspec
(setq rspec-use-spring-when-possible nil)

;; Smartparens is minor mode for Emacs that deals with parens pairs and tries to be smart about it
(require-package 'smartparens)

(require 'smartparens-config)

;; Ruby tools
(require-package 'ruby-tools)
(require 'ruby-tools)

(add-hook 'ruby-mode-hook
  (function (lambda ()
           (setq projectile-tags-command "ctags --languages=ruby -Re -f \"%s\" %s . $(bundle list --paths)"))))

;; Bundle
(require-package 'bundler)

;; Projectile-Rails
(require-package 'projectile-rails)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

;; Ruby Refactor
(require-package 'ruby-refactor)
(require 'ruby-refactor)
(add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)

(provide '50-ruby)
