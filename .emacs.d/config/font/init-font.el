;;;
;;; Font Configurations
;;;

(cond
 ((string-match "apple-darwin" system-configuration)
  (when (boundp 'create-fontset-from-mac-roman-font)
    (create-fontset-from-mac-roman-font   
     "-apple-m+ 1m regular-medium-r-normal--14-*-*-*-*-*-mac-roman" nil "asciimplus")
    (set-fontset-font "fontset-asciimplus" 'japanese-jisx0208
                      '("ヒラギノ角ゴ pro w3" . "jisx0208.1983"))
    (set-fontset-font "fontset-asciimplus" 'katakana-jisx0201
                      '("ヒラギノ角ゴ pro w3" . "jisx0201.1976"))
    (add-to-list 'default-frame-alist '(font . "fontset-asciimplus"))))
 ((string-match "msvc" system-configuration)
  (w32-add-font
   "myfont"
   '((spec
      ((:char-spec ascii :height any) 
       strict 
       (w32-logfont "verdana" 0 -16 400 0 nil nil nil 128 1 3 49)
       ((spacing . 1))))))
  
  (setq default-frame-alist 
        (append (list 
                 '(font . "myfont")
                 '(hight . 16))
                default-frame-alist))))

(provide 'init-font)