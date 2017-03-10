;; Projectile
;; ==========
(use-package projectile)
(projectile-global-mode)

(custom-set-variables
  '(projectile-globally-ignored-directories
     (quote
      (".idea" ".eunit" ".git" ".hg" ".fslckout" ".bzr" "_darcs" ".tox" ".svn" "build" "node_modules" "bower_components" "target")))
      )

 (provide 'init-projectile)
