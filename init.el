;;参考这个的配置
;;https://github.com/purcell/emacs.d/blob/master/init.el
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;;(require 'init-benchmarking) ;; Measure startup time
(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))


;;----------------------------------------------------------------------------------------------------
;; 基本配置
;;----------------------------------------------------------------------------------------------------
(require 'init-base)
(require 'init-china)
(require 'init-package)

;;----------------------------------------------------------------------------------------------------
;; 开发
;;----------------------------------------------------------------------------------------------------
