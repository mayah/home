;;;
;;; Key Configurations
;;;

(global-set-key "\C-h" 'delete-backward-char)

; Do not suspend if C-z is pressed.
(global-unset-key "\C-z")

;; use super and hyper key as meta.
;; add linux key bindings
(when (linuxp)
  (setq x-super-keysym 'meta)
  (setq x-hyper-keysym 'meta))

;; add mac key bindingds
(when (macp)
  (setq mac-command-key-is-meta t))

;; http://namazu.org/~satoru/diary/?200203c&to=200203272#200203272
;; 編集中のファイルを開き直す
;; - yes/no の確認が不要;;   - revert-buffer は yes/no の確認がうるさい
;; - 「しまった! 」というときにアンドゥで元のバッファの状態に戻れる
;;   - find-alternate-file は開き直したら元のバッファの状態に戻れない
;;

(defun reopen-file ()
  (interactive)
  (let ((file-name (buffer-file-name))
        (old-supersession-threat
         (symbol-function 'ask-user-about-supersession-threat))
        (point (point)))
    (when file-name
      (fset 'ask-user-about-supersession-threat (lambda (fn)))
      (unwind-protect
          (progn
            (erase-buffer)
            (insert-file file-name)
            (set-visited-file-modtime)
            (goto-char point))
        (fset 'ask-user-about-supersession-threat
              old-supersession-threat)))))

(define-key ctl-x-map "\C-r" 'reopen-file)

(provide 'init-key)
