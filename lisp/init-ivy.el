;; Some shortcuts:
;; C-c p f counsel-projectile-find-file: find a project file,
;; C-c p d counsel-projectile-find-dir: find a project directory,
;; C-c p b counsel-projectile-switch-to-buffer: switch to a project buffer,
;; C-c p s s counsel-projectile-ag: search project files with ag,
;; C-c p p counsel-projectile-switch-project: switch to another project (see above).

(use-package ivy :ensure t
  :diminish (ivy-mode . "")
  :bind
  (:map ivy-mode-map
        ("C-c h" . counsel-projectile-find-file) ;; Search project files, just for helm habbit
        ("C-c k" . counsel-yank-pop) ;; Show kill-ring
        ("C-'" . ivy-avy))
  :config
  (ivy-mode 1)
  (require 'smex) ;; show most recent M-x commands at the top
  (counsel-projectile-on) ;; https://github.com/ericdanan/counsel-projectile
  (setq ivy-use-virtual-buffers t)
  (setq ivy-height 13)   ;; number of result lines to display
  ;; (setq ivy-count-format "")  ;; does not count candidates
  (setq ivy-initial-inputs-alist nil)   ;; no regexp by default
  (setq ivy-re-builders-alist   ;; configure regexp engine.
        '((t   . ivy--regex-ignore-order))))         ;; allow input not in order

(ivy-mode 1)

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)

(provide 'init-ivy)
