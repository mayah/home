;;;
;;; AutoInstall Configurations
;;;

(when (require 'auto-install nil 'noerror) 
  (setq auto-install-directory "~/.emacs.d/auto-install")
  (auto-install-update-emacswiki-package-name t)
  (auto-install-compatibility-setup))             ; 互換性確保

(provide 'init-auto-install)
