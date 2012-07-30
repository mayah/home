;;;
;;; OCaml configurations
;;;

(setq auto-mode-alist (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'camldebug "camldebug" "Run the Caml debugger" t)

(add-hook 'tuareg-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq tuareg-lazy-= t)
             (setq tuareg-lazy-paren t)
             (setq tuareg-in-indent 0)
             (setq tuareg-font-lock-governing '("brown" "cyan" nil t t t))
                                        ; bold leading keywords in color mode
                                        ; bold-italic in font mode
             (if (featurep 'sym-lock)   ; Sym-Lock customization only
                 (setq sym-lock-mouse-face-enabled nil))
                                        ; turn off special face under mouse
             ))

(provide 'init-ocaml)