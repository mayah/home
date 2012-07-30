;;;
;;; HTML/SGML Configurations
;;;

(add-hook 'sgml-mode-hook
          '(lambda ()
             (setq sgml-basic-offset 4)))

(provide 'init-html)