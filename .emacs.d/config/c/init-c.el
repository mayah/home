;;;
;;; C/C++
;;;

(add-hook 'c-mode-common-hook
          '(lambda ()
             (c-set-style "bsd")
             (setq indent-tabs-mode nil)
             (setq c-basic-offset 4)
             (setq tab-width 4)))

(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-offset 'innamespace 0)))

(provide 'init-c)

