;; Avy - Jump to things in Emacs tree-style
;; https://github.com/abo-abo/avy
;; ----------------------------------------
(require-package 'avy)
(setq avy-background t)
(global-set-key (kbd "C-c j") 'avy-goto-char-timer)

(provide 'init-avy)
