;; Settings
;; ========
;; Global things and tweaks, to make overall experience better

(setq inhibit-splash-screen t) ;; Dont show welcome screen
(desktop-save-mode)            ;; Reopen last item after close
(global-hl-line-mode)          ;; Highline current line
(prefer-coding-system 'utf-8)  ;; Encoding
(windmove-default-keybindings) ;; Move from window to window using shift+arrow keys: S-<left> (right, up, down)

;; Settings - Company mode
;; =======================
(use-package company-tern)
(add-hook 'after-init-hook 'global-company-mode) ;; Autocomplete

;; Whitespace cleanup
;; ==================
(use-package whitespace-cleanup-mode)
(whitespace-cleanup)
(add-hook 'prog-mode-hook 'whitespace-cleanup-mode)

;; Expand region
;; https://github.com/magnars/expand-region.el
(use-package expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C--") 'er/contract-regiqon)
(global-set-key (kbd "C-;") #'comment-line)
;; BUG: setting a mark with C-SPC after quitting expand-region with C-g
;; https://github.com/magnars/expand-region.el/issues/220
(setq shift-select-mode nil)

;; Look & Feel
;; ===========
;; (use-package zenburn-theme)
;; (load-theme 'zenburn t)
(load-theme 'leuven t)

(tool-bar-mode -1)     ;; Hide toolbar
(scroll-bar-mode -1)   ;; Hide scrollbar
(column-number-mode 1) ;; Show not only line, but also column number of cursor in the status line
(winner-mode 1)        ;; Cycle through window layouts used. C-c <left> <right>

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode) ;;  highlights parens, brackets, and braces according to their depth

;; Beacon
;; ======
(use-package beacon)
(beacon-mode 1)        ;; Highlight cursor whenever it jumps to different window

;; Linum-Mode
;; ==========
(global-linum-mode 1) ;; Show line numbers

;; Backups
;; =======
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Other
;; =====
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2) ;; Set default indentation to 2 spaces

(fset 'yes-or-no-p 'y-or-n-p) ;; Never type yes or no again


(provide 'init-editor)
