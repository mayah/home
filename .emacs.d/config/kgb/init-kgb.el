;;;
;;; KGB Configuration
;;;

(defvar buffer-name "*Messages*")

(add-hook 'after-save-hook
          (lambda ()
            (call-process "kgb_report.py" nil buffer-name t "emacs-save"
                          (format "%s %d %s" (buffer-name) (buffer-size) (buffer-file-name)))))

(add-hook 'find-file-hook
          (lambda ()
            (call-process "kgb_report.py" nil buffer-name t "emacs-find"
                          (format "%s %d %s" (buffer-name) (buffer-size) (buffer-file-name)))))

(add-hook 'after-change-major-mode-hook
          (lambda ()
            (call-process "kgb_report.py" nil buffer-name t "emacs-mode" mode-name)))

(provide 'init-kgb)
