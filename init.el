(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")))

(package-initialize)

(add-to-list 'load-path  "~/.emacs.d/lisp/")
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(when (not package-archive-contents)
  (package-refresh-contents))
(package-install-selected-packages)

(eval-when-compile
 (require 'use-package))

;; Setup modes
(defconst *is-a-mac* (eq system-type 'darwin))

;; Core things
;; -----------
(use-package init-osx)
;;(require 'init-elpa)

;; Editor styles
;; -------------
(use-package init-editor)

;; Different additions
;; -------------------
(use-package init-projectile)
(use-package init-helm)
(use-package init-smartparens)
(use-package init-git)
(use-package init-js)
;; (require 'init-org)
;; (require 'init-md)
(use-package init-avy)
(use-package init-yasnippet)

(provide 'init)
;;; init.el ends here
