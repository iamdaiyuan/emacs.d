;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;中文
;;http://wordpress.yesokay.tk/mac-os-x-emacs-chinese-font-setting.html
;;   (let ((my-font-height 180) 180是调整字体大小的
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (eq window-system 'ns)
  (let ((my-font-height 160)
        (my-font (cond
                  (t   "Monaco")  ;; XCode 3.1 

                  (nil "Menlo")   ;; XCode 3.2
                  ))
        (my-font-ja "STHeiti"))

    (setq mac-allow-anti-aliasing t)
    (setq face-font-rescale-alist
          '(("^-apple-hiragino.*" . 1.4)
            (".*osaka-bold.*" . 1.4)
            (".*osaka-medium.*" . 1.4)
            (".*courier-bold-.*-mac-roman" . 1.2)
            (".*monaco cy-bold-.*-mac-cyrillic" . 1.1)
            (".*monaco-bold-.*-mac-roman" . 1.1)
            ("-cdac$" . 1.5)))

    (when my-font
      (set-face-attribute 'default nil :family my-font :height my-font-height)
      )

    (when my-font-ja
      (let ((fn (frame-parameter nil 'font))
            (rg "iso10646-1"))
        (set-fontset-font fn 'chinese-gb2312 `(,my-font-ja . ,rg))
        (set-fontset-font fn 'chinese-gbk `(,my-font-ja . ,rg))))))

