(when *is-a-mac*
  ;;(setq mac-command-modifier 'meta)
  ;;(setq mac-option-modifier 'none)
  (setq-default default-input-method "MacOSX")
  (set-frame-font "Monaco-13")
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier  'meta)
  (setq ns-function-modifier 'hyper)

  ;;(exec-path-from-shell-initialize) ;; TODO this should be working

  (global-set-key (kbd "M-`") 'ns-next-frame)       ;; Toggle frames
  (global-set-key (kbd "M-h") 'ns-do-hide-emacs)    ;; Hide Emacs
  (global-set-key (kbd "M-s-h") 'ns-do-hide-others) ;; Mac Hide Others
)

(provide 'init-osx)
