;;;
;;; Language Configurations
;;;

(set-language-environment "Japanese")

(cond ((string-match "msvc" system-configuration) nil)
      (t (set-terminal-coding-system 'utf-8)
         (set-keyboard-coding-system 'utf-8)))

(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

(provide 'init-language)