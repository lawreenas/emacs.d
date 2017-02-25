(when *is-a-mac*
  ;;(setq mac-command-modifier 'meta)
  ;;(setq mac-option-modifier 'none)
  (setq-default default-input-method "MacOSX")
  (set-frame-font "Monaco-12")
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier  'meta)
  (setq ns-function-modifier 'hyper)

  ;;(exec-path-from-shell-initialize) ;; TODO this should be working

  (global-set-key (kbd "M-`") 'ns-next-frame)
  (global-set-key (kbd "M-h") 'ns-do-hide-emacs)
)

(provide 'init-osx)
