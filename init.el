(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")))

(package-initialize)

(add-to-list 'load-path  "~/.emacs.d/lisp/")
;;(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;(require 'init-benchmarking) ;; Measure startup time

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(when (not package-archive-contents)
  (package-refresh-contents))
(package-install-selected-packages)

;;(eval-when-compile
;;  (require 'use-package))

;; Setup modes
(defconst *is-a-mac* (eq system-type 'darwin))

;; Core things
;; -----------
(require 'init-osx)
(require 'init-elpa)

;; Editor styles
;; -------------
(require 'init-editor)

;; Different additions
;; -------------------
(require 'init-projectile-helm)
(require 'init-smartparens)
(require 'init-git)
(require 'init-js)
(require 'init-org)
(require 'init-md)
(require 'init-avy)

(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
