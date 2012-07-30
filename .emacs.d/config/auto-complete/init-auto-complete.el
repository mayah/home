;;;
;;; auto complete
;;;

(when (require 'auto-complete-config nil 'noerror)
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/var/auto-complete/dict")
  (setq ac-comphist-file "~/.emacs.d/var/auto-complete/comphist.dat")
  (ac-config-default))

(provide 'init-auto-complete)
