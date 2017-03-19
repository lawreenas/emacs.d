(use-package rjsx-mode)

;; js2-mode settings
;; ===================
(add-to-list 'auto-mode-alist
             '("\\.js\\'" . js2-mode))

(add-to-list 'auto-mode-alist
             '("components\\/.*\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist
             '("containers\\/.*\\.js\\'" . rjsx-mode))

(setq-default js-indent-level 2)
(setq-default js2-include-node-externs t)
(setq-default js2-mode-show-parse-errors nil)
(setq-default js2-mode-show-strict-warnings nil)
(setq-default js2-strict-trailing-comma-warning nil) ;; allow

;;Flycheck
;; http://www.flycheck.org/manual/latest/index.html
;;========
;; turn on flychecking globally
;; (add-hook 'after-init-hook #'global-flycheck-mode)

;; disable jshint since we prefer eslint checking
;; (setq-default flycheck-disabled-checkers (append flycheck-disabled-checkers '(javascript-jshint)))
(setq-default flycheck-check-syntax-automatically '(save idle-change new-line)) ;; Dont run flycheck when file is open
(add-hook 'prog-mode-hook 'flycheck-mode)
;; (global-flycheck-mode)
(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))

(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

;; Auto-fix eslint on save
;;(use-package eslintd-fix-mode)
;;(add-hook 'js2-mode-hook 'eslintd-fix-mode)
;;(add-hook 'rjsx-mode-hook 'eslintd-fix-mode)




;; Settings - Company mode
;; =======================
(add-hook 'after-init-hook 'global-company-mode) ;; Autocomplete
 ;; Autocomplete snippets

(add-hook 'rjsx-mode-hook
          (lambda ()
            (tern-mode t)
            (add-to-list 'company-backends 'company-tern)))
;;(add-to-list 'company-backends 'company-yasnippet)

(provide 'init-js)
