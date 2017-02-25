(require-package 'zenburn-theme)

;; Settings
;; ========
(desktop-save-mode)   ;; Reopen last item after close
(global-hl-line-mode) ;; Highline current line
(prefer-coding-system 'utf-8)

;; Settings - Company mode
(require-package 'company-tern)
(add-hook 'after-init-hook 'global-company-mode) ;; Autocomplete

;; Look & Feel
;; ===========
(load-theme 'zenburn t)

(tool-bar-mode -1)     ;; Hide toolbar
(scroll-bar-mode -1)   ;; Hide scrollbar
(winner-mode 1)        ;; Cycle through window layouts used. C-c <left> <right>
(column-number-mode 1) ;; Show not only line, but also column number of cursor in the status line

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(provide 'init-editor)
