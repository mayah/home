(defun my-where ()
  (or (buffer-file-name) default-directory))

(defun my-where-truename ()
  (file-truename (my-where)))

(defun my-webkit-code-p (&optional file-path)
  (let ((file-path (or file-path (my-where-truename))))
    (and file-path
         (string-match "/WebKit/" file-path))))

(defun my-webkit-style()
  (interactive)
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 4)
  (setq py-indent-offset 4)
  (c-set-offset 'access-label '-)
  (c-set-offset 'case-label 0)
  (c-set-offset 'substatement-open 0)
  (c-set-offset 'statement-cont '+)
  (c-set-offset 'innamespace 0)
  (c-set-offset 'member-init-intro '+)
  (set (make-local-variable 'js2-basic-offset) 4))

(defun my-webkit-common-hook ()
  (when (my-webkit-code-p)
    (my-webkit-style)))

(dolist (hook '(c-mode-common-hook python-mode-hook))
  (add-hook hook 'my-webkit-common-hook 'append))  ;; append is necessary to overwrite common style.
