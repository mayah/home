;;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode: nil -*-

;;;
;;; init.el -- Emacs initial setting
;;;

(unless (boundp 'user-emacs-directory)
  (defvar user-emacs-directory (expand-file-name "~/.emacs.d/")))

;;;
;;; set load path
;;;

; TODO: add a function like add-to-load-path
(setq load-path
      (cons (expand-file-name (concat user-emacs-directory "site-lisp")) load-path))

(setq load-path
      (cons (expand-file-name (concat user-emacs-directory "auto-install")) load-path))

; all subdirectories in config are added in load-path.
(let ((default-directory (concat user-emacs-directory "lib")))
      (normal-top-level-add-subdirs-to-load-path))

(let ((default-directory (concat user-emacs-directory "config")))
      (normal-top-level-add-subdirs-to-load-path))

;;;
;;; Load required libraries
;;;

(require 'lib-environment)

;;;
;;; Load configurations
;;;

(if (and (boundp 'window-system) window-system)
    (when (string-match "XEmacs" emacs-version)
        (if (not (and (boundp 'mule-x-win-initted) mule-x-win-initted))
            (require 'sym-lock))
        (require 'font-lock)))

(require 'init-default)
(require 'init-backup)
(require 'init-key)
(require 'init-language)
(require 'init-font)

;(require 'init-auto-install)
(require 'init-auto-complete)

(require 'init-ocaml)
(require 'init-c)
(require 'init-objc)
(require 'init-html)

(require 'init-kgb)

(require 'init-appearance)
;(require 'init-webkit)

(require 'init-package)

; override the general configuration in some situations.
(when (googlep)
  (require 'init-google))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil)
 '(safe-local-variable-values (quote ((encoding . utf-8) (encoding . utf-8-unix)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-function-name-face ((t (:foreground "brightcyan"))))
 '(minibuffer-prompt ((t (:foreground "brightcyan")))))
