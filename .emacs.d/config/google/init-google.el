;;;
;;; Google Environment Setup
;;;

; Load default file.
;(load-file "/home/build/public/eng/elisp/google.el")
;(setq p4-use-p4config-exclusively t)

(require 'google)

; objc-mode should use offset 2.
(defun google-c-mode-common-hook ()
  (setq c-basic-offset 2)
  (setq tab-width 2))

(add-hook 'c-mode-common-hook
          'google-c-mode-common-hook
          'append)

; We would like to warn if width of c++ code is over 80.
(defun font-lock-width-keyword (width)
  "Return a font-lock style keyword for a string beyond width WIDTH
that uses 'font-lock-warning-face'."
  `((,(format "^%s\\(.+\\)" (make-string width ?.))
     (1 font-lock-warning-face t))))
(font-lock-add-keywords 'c++-mode (font-lock-width-keyword 80))
(font-lock-add-keywords 'java-mode (font-lock-width-keyword 100))
(font-lock-add-keywords 'python-mode (font-lock-width-keyword 80))

; TODO(mayah): We have to check we're in WebKit directory.
; webkit should use offset 4.
; (load-file "~/.emacs.d/config/google/webkit-conf.el")

; Go
(setq enable-gofmt-before-save nil)

(provide 'init-google)
