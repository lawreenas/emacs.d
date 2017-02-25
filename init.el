(setq package-archives
  '(("melpa" . "https://melpa.org/packages/")
  ("marmalade" . "http://marmalade-repo.org/packages/")
  ("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(add-to-list 'load-path  "~/.emacs.d/lisp/")
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-benchmarking) ;; Measure startup time

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(when (not package-archive-contents)
  (package-refresh-contents))
(package-install-selected-packages)

;; Setup modes
(defconst *is-a-mac* (eq system-type 'darwin))
(require 'init-osx)
(require 'init-elpa)

(require 'init-editor)
(require 'init-projectile-helm)

(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
