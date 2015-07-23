;;RSpec
(require-package 'rspec-mode)

;; Don't use spring for rspec
(setq rspec-use-spring-when-possible nil)

;;Smartparens is minor mode for Emacs that deals with parens pairs and tries to be smart about it
(require-package 'smartparens)

(require 'smartparens-config)

;;Ruby tools
(require-package 'ruby-tools)
(require 'ruby-tools)

(provide '50-ruby)
