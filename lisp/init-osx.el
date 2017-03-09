;;; init-osx.el  ---  OSX config
;;; Commentary:
;;; Elm lang related configurations
;;; Code:
(when *is-a-mac*
  ;;(setq mac-command-modifier 'meta)
  ;;(setq mac-option-modifier 'none)
  (setq-default default-input-method "MacOSX")
  (set-frame-font "Monaco-13")
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier  'meta)
  (setq ns-function-modifier 'hyper)

  (global-set-key (kbd "M-`") 'ns-next-frame)       ;; Toggle frames
  (global-set-key (kbd "M-h") 'ns-do-hide-emacs)    ;; Hide Emacs
  (global-set-key (kbd "M-s-h") 'ns-do-hide-others) ;; Mac Hide Others

(add-hook
 'after-init-hook
 (lambda ()
   (setq exec-path-from-shell-check-startup-files nil)
   (exec-path-from-shell-initialize)
   (exec-path-from-shell-copy-envs '("WORKON_HOME" "GOPATH"))))
  )


(provide 'init-osx)
;;; init-osx.el ends here
