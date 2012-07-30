;;;
;;; Environment distinguishing functions
;;;

;; ----------------------------------------------------------------------
;; system-type predicates.
(defun emacs23p ()
  (equal emacs-major-version 23))

;; ----------------------------------------------------------------------
;; os-type predicates.

(defun linuxp ()
  (eq system-type 'gnu/linux))

(defun macp ()
  (and (eq window-system 'mac) (emacs23p)))

;; ----------------------------------------------------------------------
;; environment-type predicates.

(provide 'lib-environment)