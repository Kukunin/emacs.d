(require-package 'exec-path-from-shell)

(when (memq window-system '(mac ns))
     (exec-path-from-shell-initialize))

(provide '10-shell)
