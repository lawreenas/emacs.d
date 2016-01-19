
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(column-number-mode t)
 '(company-dabbrev-downcase nil)
 '(company-idle-delay 0.3)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("f024aea709fb96583cf4ced924139ac60ddca48d25c23a9d1cd657a2cf1e4728" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "f25c30c1de1994cc0660fa65c6703706f3dc509a342559e3b5b2102e50d83e4f" "c1fb68aa00235766461c7e31ecfc759aa2dd905899ae6d95097061faeb72f9ee" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "f5eb916f6bd4e743206913e6f28051249de8ccfd070eae47b5bde31ee813d55f" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" default)))
 '(fci-rule-color "#383838")
 '(flx-ido-mode nil)
 '(flx-ido-threshold 500)
 '(font-lock-global-modes (quote (not speedbar-mode)))
 '(fringe-mode (quote (1 . 1)) nil (fringe))
 '(global-auto-complete-mode nil)
 '(global-auto-revert-mode t)
 '(global-linum-mode nil)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote cabal-repl))
 '(helm-M-x-fuzzy-match t)
 '(helm-buffers-fuzzy-matching t)
 '(helm-locate-fuzzy-match t)
 '(helm-recentf-fuzzy-match t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(ido-mode nil nil (ido))
 '(indent-tabs-mode nil)
 '(indicate-empty-lines nil)
 '(js-indent-level 4)
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(nxml-child-indent 4)
 '(nxml-slash-auto-complete-flag t)
 '(org-src-fontify-natively t)
 '(org-startup-truncated nil)
 '(package-selected-packages
   (quote
    (smart-mode-line seq beacon hydra zenburn-theme yaml-mode whitespace-cleanup-mode web-mode toml-mode solarized-theme sml-mode smartparens scss-mode rust-mode restclient rainbow-delimiters paradox nose markdown-mode magit less-css-mode json-mode javadoc-lookup inf-ruby iedit hemisu-theme helm-swoop helm-projectile haskell-mode gitconfig-mode fuzzy flycheck f expand-region exec-path-from-shell elpy eclipse-theme dockerfile-mode discover-my-major delight company-tern coffee-mode cider buffer-move avy auto-complete ace-jump-mode)))
 '(paradox-execute-asynchronously t)
 '(paradox-github-token t)
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".eunit" ".git" ".hg" ".fslckout" ".bzr" "_darcs" ".tox" ".svn" "build" "node_modules" "bower_components" "target")))
 '(python-shell-interpreter "ipython3")
 '(python-skeleton-autoinsert t)
 '(safe-local-variable-values
   (quote
    ((web-mode-markup-indent-offset . 4)
     (web-mode-markup-indentation . 4))))
 '(scroll-bar-mode nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(virtualenv-root "/Users/hoppipolla/VirtualEnvs/")
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-auto-quoting nil)
 '(web-mode-markup-indent-offset 2)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
