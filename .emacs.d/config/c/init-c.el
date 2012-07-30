;;;
;;; C/C++
;;;

(add-hook 'c-mode-common-hook
          '(lambda ()
             (c-set-style "bsd")
             (setq indent-tabs-mode nil)
             (setq c-basic-offset 4)
             (setq tab-width 4)))

(provide 'init-c)

