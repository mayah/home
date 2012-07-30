;;;
;;; Backup Configuration
;;;

(setq make-backup-files t)
(defun make-backup-file-name (filename)
  (expand-file-name
   (concat user-emacs-directory "backup/" (file-name-nondirectory filename) "~")
   (file-name-directory filename)))

(provide 'init-backup)