(require-package 'rjsx-mode)

;; js2-mode settings
;; ===================

(add-to-list
  'auto-mode-alist
  '("\\.js\\'" . js2-mode))

(add-to-list 'auto-mode-alist
  '("components\\/.*\\.js\\'" . rjsx-mode))

(provide 'init-js)
