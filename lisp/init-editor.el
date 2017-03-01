(require-package 'zenburn-theme)

;; Settings
;; ========
(setq inhibit-splash-screen t) ;; Dont show welcome screen
(desktop-save-mode)            ;; Reopen last item after close
(global-hl-line-mode)          ;; Highline current line
(prefer-coding-system 'utf-8)  ;; Encoding
(windmove-default-keybindings) ;; Move from window to window using shift+arrow keys: S-<left> (right, up, down)


;; Settings - Company mode
;; =======================
(require-package 'company-tern)
(add-hook 'after-init-hook 'global-company-mode) ;; Autocomplete

;; Status line
;; ===========
(require-package 'sml-mode)
;;(sml/setup)
;;(setq rm-blacklist
;;      (mapconcat
;;       'identity
;;       '("WSC.*" "Projectile.*" "SP.*" "Helm" "(\\*)" "Doc" "Interactive" "Undo-Tree")
;;       "\\|"))


;; Look & Feel
;; ===========
(load-theme 'zenburn t)

(tool-bar-mode -1)     ;; Hide toolbar
(scroll-bar-mode -1)   ;; Hide scrollbar
(column-number-mode 1) ;; Show not only line, but also column number of cursor in the status line
(winner-mode 1)        ;; Cycle through window layouts used. C-c <left> <right>

;; Beacon
;; ======
(require-package 'beacon)
(beacon-mode 1)        ;; Highlight cursor whenever it jumps to different window

;; Other
;; =====
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)




(provide 'init-editor)
