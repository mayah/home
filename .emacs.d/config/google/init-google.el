;;;
;;; Google Environment Setup
;;;

; Load default file.
(load-file "/home/build/public/eng/elisp/google.el")
(setq p4-use-p4config-exclusively t)

; objc-mode should use offset 2.
(defun google-c-mode-common-hook ()
  (setq c-basic-offset 2)
  (setq tab-width 2))

(add-hook 'c-mode-common-hook
          'google-c-mode-common-hook
          'append)

; TODO(mayah): We have to check we're in WebKit directory.
; webkit should use offset 4.
; (load-file "~/.emacs.d/config/google/webkit-conf.el")

(provide 'init-google)
