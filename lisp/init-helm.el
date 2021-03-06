;; Helm-Projectile
;; ===============
(use-package helm-projectile)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; Helm
;; ====
(use-package helm-swoop)

;;(require 'helm-config)

(helm-mode 1)
(helm-autoresize-mode 1)

(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t
      helm-M-x-fuzzy-match t
      helm-locate-fuzzy-match t)

(custom-set-variables
 '(helm-recentf-fuzzy-match t)
 '(helm-buffers-fuzzy-matching t)
 '(helm-M-x-fuzzy-match t)
 '(helm-locate-fuzzy-match t))

;; Keys
;; ====
(global-set-key (kbd "C-c p s s") 'helm-projectile-ag)
(global-set-key (kbd "C-c p p") 'helm-projectile-switch-project)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c s") 'helm-swoop)
(global-set-key (kbd "C-c h") 'helm-projectile)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-c b") 'helm-projectile-switch-to-buffer)
(global-set-key (kbd "C-c k") 'helm-show-kill-ring)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-s") 'helm-swoop)
(global-set-key (kbd "C-c r") 'helm-resume)
(global-set-key (kbd "C-c C-s") 'helm-projectile-ag)

(provide 'init-helm)
;;; init-helm ends here
