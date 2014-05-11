;;;
;;; Default Configurations
;;;
;;;   This files contains misc global configurations.
;;;

(setq-default tab-width 4 indent-tabs-mode nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'init-default)