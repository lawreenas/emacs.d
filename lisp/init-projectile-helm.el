;; Projectile
;; ==========
(require-package 'projectile)
(projectile-global-mode)
(setq projectile-completion-system 'helm)

;; Helm-Projectile
(require-package 'helm-projectile)
(helm-projectile-on)

;; Helm
;; ====
(require-package 'helm-swoop)

;;(require 'helm-config)
(helm-mode 1)
(helm-autoresize-mode 1)
(custom-set-variables
 '(helm-recentf-fuzzy-match t)
 '(helm-buffers-fuzzy-matching t)
 '(helm-M-x-fuzzy-match t)
 '(helm-locate-fuzzy-match t))

 (provide 'init-projectile-helm)
