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
(require 'ruby-tools)

(provide '50-ruby)
