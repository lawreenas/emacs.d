;;; init.el  --- Emacs init file
;;; Commentary:
;;; All the editor related configs are placed or and required here
;;; Code:

;; ===========
;; Look & Feel
;; ===========
(prefer-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)
(setq inhibit-splash-screen t)
(setq kill-whole-line t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(windmove-default-keybindings)
(setq windmove-wrap-around t)
(fset 'yes-or-no-p 'y-or-n-p)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(put 'erase-buffer 'disabled nil)
(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file)

;; =======
;; Backups
;; =======
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;; ========
;; Package
;; List of packages: package-selected-packages
;; ========
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
(package-install-selected-packages)

;; =====
;; Theme
;; =====
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/zenburn-emacs")
(load-theme 'zenburn t)


;; ========
;; Mac OS X
;; ========
;; >>> M-x eval buffer to reload
;;
(when (equal system-type 'darwin)
  ;; (set-frame-font "Input Mono Narrow-12")
  ;;(set-frame-font "Monaco-14")
  (set-frame-font "Menlo-13")
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta)
  (setq ns-function-modifier 'hyper)
  (exec-path-from-shell-initialize))

;; ===================
;; Major & Minor modes
;; ===================
(defalias 'list-buffers 'ibuffer)
(desktop-save-mode)
(winner-mode 1)
(semantic-mode 1)
(column-number-mode 1)
(global-auto-revert-mode 1)
(global-hl-line-mode 1)

;; Paradox
;; =======
(custom-set-variables
 '(paradox-execute-asynchronously t))

;; Beacon
;; ====
(beacon-mode 1)

;; Expand Region
(require 'expand-region)

;; Company
(add-hook 'after-init-hook 'global-company-mode)

;; Flycheck
(add-hook 'after-init-hook 'global-flycheck-mode)

;; Org
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; langauges we want org-babel to support
(org-babel-do-load-languages
 'org-babel-load-languages
 '((sh . t)))

;; restclient-mode
(require 'restclient)
(add-to-list 'auto-mode-alist '("\\.http$" . restclient-mode))

;; python
(add-hook 'python-mode-hook
          (lambda ()
            (elpy-enable)
            (evil-local-set-key 'normal (kbd "gd") 'elpy-goto-definition)))

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; sass-mode
(setq scss-compile-at-save nil)

;; dockerfile
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

;; inf-ruby
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)

;; subword
(add-hook 'prog-mode-hook 'subword-mode)

;; rainbow-delimiters
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; whitespace-cleanup
(require 'whitespace-cleanup-mode)
(add-hook 'prog-mode-hook 'whitespace-cleanup-mode)

;; Helm
;; ====
(require 'helm-config)
(helm-mode 1)
(helm-autoresize-mode 1)
(custom-set-variables
 '(helm-recentf-fuzzy-match t)
 '(helm-buffers-fuzzy-matching t)
 '(helm-M-x-fuzzy-match t)
 '(helm-locate-fuzzy-match t))


 (add-to-list
  'load-path
  (expand-file-name "settings" user-emacs-directory))

;; Haskell
;; =======
;;(require 'lang-haskell)

;; Clojure
;; =======
(require 'clojure-mode)
(require 'cider)
(setq nrepl-log-messages t)
(setq nrepl-buffer-name-separator "-")
(setq nrepl-buffer-name-show-port t)
(setq cider-repl-history-file "~/.emacs.d/nrepl-history")
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\.edn$" . clojure-mode))
(add-to-list 'auto-mode-alist '("gantryfile" . clojure-mode))
(add-hook 'cider-repl-mode-hook #'subword-mode)
(add-hook 'cider-mode-hook
          (lambda ()
            (eldoc-mode)
            (evil-local-set-key 'normal (kbd "gd") 'cider-find-var)))


;; CoffeeScript
;; ============
(add-hook 'coffee-mode-hook
          (lambda ()
            (setq-local coffee-tab-width 2)
            (setq-local coffee-args-compile '("-c" "--bare"))
            (local-set-key (kbd "M-r") 'coffee-compile-buffer)))

;; JavaScript
;; ==========
(custom-set-variables
 '(js-indent-level 4))

(add-hook 'js-mode-hook
          (lambda ()
            (tern-mode t)
            (setq-local company-backends '(company-tern))))

;; Go
;; ==
(add-hook 'go-mode-hook
          (lambda ()
            (exec-path-from-shell-copy-env "GOPATH")
            (go-eldoc-setup)
            (add-hook 'before-save-hook 'gofmt-before-save)
            (evil-local-set-key 'normal (kbd "gd") 'godef-jump)
            (setq-local company-backends '(company-go))))


;; Web
;; ===
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

(defun my-web-mode-hook ()
  (setq-local web-mode-markup-indent-offset 4)
  (setq-local web-mode-code-indent-offset 4)
  (setq-local web-mode-css-indent-offset 4)
  (setq-local web-mode-enable-auto-quoting nil))

(add-hook 'web-mode-hook  'my-web-mode-hook)

;; Projectile
;; ==========
(require 'projectile)
(require 'helm-projectile)
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; smartparens
;; ===========
(require 'smartparens-config)
(smartparens-global-mode t)
(show-smartparens-global-mode t)

(define-key smartparens-mode-map (kbd "C-M-f") 'sp-forward-sexp)
(define-key smartparens-mode-map (kbd "C-M-b") 'sp-backward-sexp)

(define-key smartparens-mode-map (kbd "C-M-d") 'sp-down-sexp)
(define-key smartparens-mode-map (kbd "C-M-a") 'sp-backward-down-sexp)
(define-key smartparens-mode-map (kbd "C-S-a") 'sp-beginning-of-sexp)
(define-key smartparens-mode-map (kbd "C-S-d") 'sp-end-of-sexp)

(define-key smartparens-mode-map (kbd "C-M-e") 'sp-up-sexp)
(define-key emacs-lisp-mode-map (kbd ")") 'sp-up-sexp)
(define-key smartparens-mode-map (kbd "C-M-u") 'sp-backward-up-sexp)
(define-key smartparens-mode-map (kbd "C-M-t") 'sp-transpose-sexp)

(define-key smartparens-mode-map (kbd "C-M-n") 'sp-next-sexp)
(define-key smartparens-mode-map (kbd "C-M-p") 'sp-previous-sexp)

(define-key smartparens-mode-map (kbd "C-M-k") 'sp-kill-sexp)
(define-key smartparens-mode-map (kbd "C-M-w") 'sp-copy-sexp)

(define-key smartparens-mode-map (kbd "M-<delete>") 'sp-unwrap-sexp)
(define-key smartparens-mode-map (kbd "M-<backspace>") 'sp-backward-unwrap-sexp)

(define-key smartparens-mode-map (kbd "C-<right>") 'sp-forward-slurp-sexp)
(define-key smartparens-mode-map (kbd "C-<left>") 'sp-forward-barf-sexp)
(define-key smartparens-mode-map (kbd "C-M-<left>") 'sp-backward-slurp-sexp)
(define-key smartparens-mode-map (kbd "C-M-<right>") 'sp-backward-barf-sexp)

(define-key smartparens-mode-map (kbd "M-D") 'sp-splice-sexp)
(define-key smartparens-mode-map (kbd "C-M-<delete>") 'sp-splice-sexp-killing-forward)
(define-key smartparens-mode-map (kbd "C-M-<backspace>") 'sp-splice-sexp-killing-backward)
(define-key smartparens-mode-map (kbd "C-S-<backspace>") 'sp-splice-sexp-killing-around)

(define-key smartparens-mode-map (kbd "C-]") 'sp-select-next-thing-exchange)
(define-key smartparens-mode-map (kbd "C-<left_bracket>") 'sp-select-previous-thing)
(define-key smartparens-mode-map (kbd "C-M-]") 'sp-select-next-thing)

(define-key smartparens-mode-map (kbd "M-F") 'sp-forward-symbol)
(define-key smartparens-mode-map (kbd "M-B") 'sp-backward-symbol)

(define-key smartparens-mode-map (kbd "H-t") 'sp-prefix-tag-object)
(define-key smartparens-mode-map (kbd "H-p") 'sp-prefix-pair-object)
(define-key smartparens-mode-map (kbd "H-s c") 'sp-convolute-sexp)
(define-key smartparens-mode-map (kbd "H-s a") 'sp-absorb-sexp)
(define-key smartparens-mode-map (kbd "H-s e") 'sp-emit-sexp)
(define-key smartparens-mode-map (kbd "H-s p") 'sp-add-to-previous-sexp)
(define-key smartparens-mode-map (kbd "H-s n") 'sp-add-to-next-sexp)
(define-key smartparens-mode-map (kbd "H-s j") 'sp-join-sexp)
(define-key smartparens-mode-map (kbd "H-s s") 'sp-split-sexp)

(sp-local-pair 'minibuffer-inactive-mode "'" nil :actions nil)

(sp-with-modes '(markdown-mode gfm-mode rst-mode)
  (sp-local-pair "*" "*" :bind "C-*")
  (sp-local-tag "2" "**" "**")
  (sp-local-tag "s" "```scheme" "```")
  (sp-local-tag "<"  "<_>" "</_>" :transform 'sp-match-sgml-tags))

(sp-with-modes '(tex-mode plain-tex-mode latex-mode)
  (sp-local-tag "i" "\"<" "\">"))

(sp-with-modes '(web-mode html-mode sgml-mode)
  (sp-local-pair "<" ">"))

(sp-with-modes sp--lisp-modes
  (sp-local-pair "(" nil :bind "C-("))
(smartparens-global-mode 1)

;; Delight
;; =======
(require 'delight)
(delight '((auto-complete-mode nil "auto-complete")
           (helm-mode nil "helm-mode")
           (undo-tree-mode nil "undo-tree")
           (haskell-doc-mode nil "haskell-doc")
           (haskell-indentation-mode nil "haskell-indentation")
           (interactive-haskell-mode nil "haskell-process")
           (whitespace-cleanup-mode)
           (smartparens-mode nil "smartparens")
           (company-mode nil "company")
           (yas-minor-mode nil "yasnippet")
           (eldoc-mode nil "eldoc")))


;; Status line
;; ===========
(sml/setup)
(setq rm-blacklist
      (mapconcat
       'identity
       '("WSC.*" "Projectile.*" "SP.*" "Helm" "(\\*)" "Doc" "Interactive" "Undo-Tree")
       "\\|"))

;; Hydra & Global Kbds
;; ===================
(require 'hydra)
(require 'hydra-examples)

(defhydra hydra-zoom (global-map "<f2>")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out")
  ("0" (text-scale-set 0) "reset")
  ("q" nil nil))

(global-set-key
 (kbd "C-M-s")
 (defhydra hydra-splitter (:hint nil)
   "
Split: [_v_]ert [_x_]:horz [_u_]ndo   [_r_]edo
Kill:  [_o_]nly [_w_]indow [_b_]uffer [_f_]rame"
   ("h" windmove-left)
   ("j" windmove-down)
   ("k" windmove-up)
   ("l" windmove-right)
   ("H" hydra-move-splitter-left)
   ("J" hydra-move-splitter-down)
   ("K" hydra-move-splitter-up)
   ("L" hydra-move-splitter-right)
   ("v" split-window-right)
   ("x" split-window-below)
   ("|" (lambda ()
          (interactive)
          (split-window-right)
          (windmove-right)))
   ("_" (lambda ()
          (interactive)
          (split-window-below)
          (windmove-down)))
   ("o" delete-other-windows :exit t)
   ("w" delete-window)
   ("b" kill-this-buffer)
   ("f" delete-frame :exit t)
   ("u" winner-undo)
   ("r" winner-redo)
   ("q" nil)))

(global-set-key
 (kbd "C-x g")
 (defhydra hydra-magit (:exit t :hint nil)
   "
magit: [_s_]tatus, [_l_]og, [_p_]ush, [_r_]eview"
   ("s" magit-status)
   ("l" magit-log)
   ("p" magit-push)
   ("r" magit-show-commit)
   ("q" nil nil)))

(global-set-key
 (kbd "C-M-h")
 (defhydra hydra-awesome (:hint nil :exit t)
   "
Helm:   [_h_]elm    [_s_]woop   [_f_]iles
Search: [_a_]g      [_m_]occur  [_r_]eplace
Buffer: [_b_]switch [_i_]buffer [_k_]ill
Misc:   [_w_]s      [_p_]aradox [_y_]ring"
   ("h" helm-projectile)
   ("s" helm-swoop)
   ("f" helm-find-files)
   ("b" helm-buffers-list)
   ("i" ibuffer)
   ("k" kill-this-buffer)
   ("p" paradox-list-packages)
   ("a" helm-ag)
   ("w" whitespace-mode)
   ("m" multi-occur)
   ("r" query-replace)
   ("y" helm-show-kill-ring)
   ("q" nil nil)))

(global-set-key
 (kbd "C-x SPC")
 (defhydra hydra-rectangle
   (:body-pre (rectangle-mark-mode 1) :color pink :post (deactivate-mark))
  "
[_d_]elete   [_e_]xchange [_y_]ank  [_u_]ndo
[_n_]ew-copy [_s_]tring   [_r_]eset [_p_]aste"
  ("e" hydra-ex-point-mark nil)
  ("n" copy-rectangle-as-kill nil)
  ("d" delete-rectangle nil)
  ("r" (if (region-active-p)
           (deactivate-mark)
         (rectangle-mark-mode 1)) nil)
  ("y" yank-rectangle nil)
  ("u" undo nil)
  ("s" string-rectangle nil)
  ("p" kill-rectangle nil)
  ("q" nil nil)))


(defhydra hydra-cider-repl (:hint nil :exit t)
  "
REPL: [_n_]s [_f_]igwheel [_k_]ill"
  ("n" cider-repl-set-ns)
  ("f" (lambda ()
         (interactive)
         (save-some-buffers)
         (with-current-buffer (cider-current-repl-buffer)
           (goto-char (point-max))
           (insert "(require 'figwheel-sidecar.repl-api)
             (figwheel-sidecar.repl-api/cljs-repl)")
           (cider-repl-return))))
  ("k" cider-quit)
  ("q" nil nil))
(define-key cider-repl-mode-map (kbd "C-x j") 'hydra-cider-repl/body)

(defhydra hydra-cider (:hint nil :exit t)
  "
REPL: [_o_]pen    [_n_]s      [_c_]onnect [_j_]ackin  [_k_]ill
Eval: [_d_]efun   [_r_]egion  [_f_]ile    [_b_]uffer  [_p_]print
Misc: [_a_]propos [_i_]nspect [_s_]cratch [_r_]efresh [_t_]race"
  ("o" cider-switch-to-repl-buffer)
  ("n" cider-repl-set-ns)
  ("c" cider-connect)
  ("j" cider-jack-in)
  ("k" cider-quit)
  ("d" cider-eval-defun-at-point)
  ("r" cider-eval-region)
  ("f" cider-load-file)
  ("b" cider-load-buffer)
  ("p" cider-pprint-eval-last-sexp)
  ("a" cider-apropos)
  ("i" cider-inspect)
  ("s" cider-scratch)
  ("r" cider-refresh)
  ("t" cider-toggle-trace-var)
  ("q" nil nil))

(define-key clojure-mode-map (kbd "C-x j") 'hydra-cider/body)

(global-set-key (kbd "C-h C-m") 'discover-my-major)
(global-set-key (kbd "C-h M-m") 'discover-my-mode)
(global-set-key (kbd "C-c s") 'helm-swoop)
(global-set-key (kbd "C-c h") 'helm-projectile)
;; (global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)
(global-set-key (kbd "C-c k") 'helm-show-kill-ring)
(global-set-key (kbd "C-c SPC") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "M-g f") 'avy-goto-line)
(global-set-key (kbd "C-;") #'comment-line)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C--") 'er/contract-region)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-s") 'helm-swoop)
;;(global-set-key (kbd "C-j") 'ace-jump-char-mode)
(global-set-key (kbd "C-j") 'avy-goto-char)

(add-hook
 'prog-mode-hook
 (lambda ()
   (hs-minor-mode 1)
   (local-set-key (kbd "C-c C-f") 'hs-toggle-hiding)))

;; js2-mode settings
;; ===================

(add-to-list
 'auto-mode-alist
 '("\\.js\\'" . js2-mode))

(provide 'init)
;;; init.el ends here
