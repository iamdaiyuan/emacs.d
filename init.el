;;参考这个的配置
;;https://github.com/purcell/emacs.d/blob/master/init.el
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))


;;--------------------------------------------------------------------------------
;; 基本配置
;;--------------------------------------------------------------------------------
(require 'init-package)
(require 'init-base)
(require 'init-china)

;;--------------------------------------------------------------------------------
;; Emacs配置
;;--------------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes (quote (solarized-light)))
 '(display-time-mode t)
 '(fringe-mode 0 nil (fringe))
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
