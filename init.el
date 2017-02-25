(setq package-archives '(("melpa" . "https://melpa.org/packages/")
("marmalade" . "http://marmalade-repo.org/packages/")
("gnu" . "http://elpa.gnu.org/packages/")))

(add-to-list 'load-path  "~/.emacs.d/lisp/")

(package-initialize)

;;(setq custom-file "~/.emacs.d/emacs-custom.el")
;;(load custom-file)
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(when (not package-archive-contents)
(package-refresh-contents))
(package-install-selected-packages)


;; Setup modes


(when (file-exists-p custom-file)
  (load custom-file))
