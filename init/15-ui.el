;; Numbered Windows
(require-package 'window-number)
(require 'window-number)
(window-number-mode 1)

;; Show columns as well as lines
(setq column-number-mode t)

;; Expand region package
(require-package 'expand-region)

;; Autosave
(defun save-all ()
  (interactive)
  (save-some-buffers t))
(add-hook 'focus-out-hook 'save-all)

(provide '15-ui)
