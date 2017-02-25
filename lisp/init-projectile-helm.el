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

(require 'helm-config)

(helm-mode 1)
(helm-autoresize-mode 1)

(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t
      helm-M-x-fuzzy-match t
      helm-locate-fuzzy-match t)

;; (custom-set-variables
;; '(helm-recentf-fuzzy-match t)
;; '(helm-buffers-fuzzy-matching t)
;; '(helm-M-x-fuzzy-match t)
;; '(helm-locate-fuzzy-match t))

;; Keys
;; ====
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c s") 'helm-swoop)
(global-set-key (kbd "C-c h") 'helm-projectile)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-c b") 'helm-projectile-switch-to-buffer)
(global-set-key (kbd "C-c k") 'helm-show-kill-ring)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-s") 'helm-swoop)


 (provide 'init-projectile-helm)
