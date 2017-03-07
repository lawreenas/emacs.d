(require-package 'rjsx-mode)

;; js2-mode settings
;; ===================

(add-to-list 'auto-mode-alist
             '("\\.js\\'" . js2-mode))

(add-to-list 'auto-mode-alist
             '("components\\/.*\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist
             '("containers\\/.*\\.js\\'" . rjsx-mode))

(custom-set-variables '(js-indent-level 2)) ;; Indentation

(setq-default js2-strict-trailing-comma-warning nil)

(provide 'init-js)
