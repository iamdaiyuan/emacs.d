;; color theme
;; https://github.com/sellout/emacs-color-theme-solarized
(load-theme 'solarized-light t)

;;关闭起动时的那个“开机画面”。
(setq inhibit-startup-message t)

;;设置有用的个人信息。这在很多地方有用。
(setq user-full-name "Dai yuan")
(setq user-mail-address "iamdaiyuan@gmail.com ")

;;在退出 emacs 之前确认是否退出
(setq confirm-kill-emacs 'yes-or-no-p)

;;mac机器，将command键盘设置为meta键
(setq mac-command-modifier 'meta)
(setq mac-control-modifier 'control) 
(setq mac-option-modifier 'alt) 

;;desktop
(desktop-save-mode 1)

;;hightline
(global-hl-line-mode 1)

;; 剪切时，同时放入粘贴板
(setq x-select-enable-clipboard t)

;; 显示行号 
(global-linum-mode 1)

;; http://www.emacswiki.org/emacs/InteractivelyDoThings
;; ido
(require 'ido)
(ido-mode t)

(provide 'init-base)
