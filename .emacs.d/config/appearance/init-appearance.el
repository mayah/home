;;;
;;; Appearance Configurations
;;;

; remove tool bar

(if (boundp 'tool-bar-mode)
    (tool-bar-mode 0))

; cursor 
(column-number-mode t)
(line-number-mode t)

; put the scroll bar on the right
(if (boundp 'set-scroll-bar-mode)
    (set-scroll-bar-mode 'right))

(which-function-mode 1)

(provide 'init-appearance)