
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
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
    ("e97dbbb2b1c42b8588e16523824bc0cb3a21b91eefd6502879cf5baa1fa32e10" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "316d29f8cd6ca980bf2e3f1c44d3a64c1a20ac5f825a167f76e5c619b4e92ff4" "949cfd4a96205b2d5e6a2ac0d2c2d0534843a55d51387cc6b6ee03a0e61fba57" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" "e5b3be70fd27f820c67bd87a08b4fbb8b5330d8200b2c85102c5a614975f319e" "d7895a864bc82c048088224b45adb4b4d11c7ed2b973e77a30810fe969a6748c" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "48373328e7ead33ed0161ad096c688376f65a617c3fcafd62dbfe814fff12a1e" "f21a0c90d189caf15bf1b6808336a281017b222af7401cd056fa457fbd314d96" "3625c04fa4b8a802e96922d2db3f48c9cb2f93526e1dc24ba0b400e4ee4ccd8a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "68d36308fc6e7395f7e6355f92c1dd9029c7a672cbecf8048e2933a053cf27e6" "f024aea709fb96583cf4ced924139ac60ddca48d25c23a9d1cd657a2cf1e4728" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "f25c30c1de1994cc0660fa65c6703706f3dc509a342559e3b5b2102e50d83e4f" "c1fb68aa00235766461c7e31ecfc759aa2dd905899ae6d95097061faeb72f9ee" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "f5eb916f6bd4e743206913e6f28051249de8ccfd070eae47b5bde31ee813d55f" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" default)))
 '(fci-rule-color "#37474f")
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
 '(hl-sexp-background-color "#1c1f26")
 '(ido-mode nil nil (ido))
 '(indent-tabs-mode nil)
 '(indicate-empty-lines nil)
 '(js-indent-level 2)
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
    (editorconfig tide dumb-jump spacegray-theme material-theme moe-theme color-theme-sanityinc-tomorrow js2-mode smart-mode-line seq beacon hydra zenburn-theme yaml-mode whitespace-cleanup-mode web-mode toml-mode solarized-theme sml-mode smartparens scss-mode rust-mode restclient rainbow-delimiters paradox nose markdown-mode magit less-css-mode json-mode javadoc-lookup inf-ruby iedit hemisu-theme helm-swoop helm-projectile haskell-mode gitconfig-mode fuzzy flycheck f expand-region exec-path-from-shell elpy eclipse-theme dockerfile-mode discover-my-major delight company-tern coffee-mode cider buffer-move avy auto-complete ace-jump-mode)))
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
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a"))))
 '(vc-annotate-very-old-color nil)
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
 '(avy-background-face ((t (:background "#3F3F3F" :foreground "#3F3F3F" :inverse-video nil))))
 '(avy-lead-face ((t (:background "#9C6363" :foreground "#DCDCCC" :inverse-video nil))))
 '(avy-lead-face-0 ((t (:background "#366060" :foreground "#DCDCCC" :inverse-video nil))))
 '(avy-lead-face-1 ((t (:background "#4F4F4F" :foreground "#DCDCCC" :inverse-video nil)))))
