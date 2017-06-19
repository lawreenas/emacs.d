(deftheme github
  "Created 2017-06-19.")

(custom-theme-set-faces
 'github
 '(default ((t (:family "Menlo" :foundry "nil" :width normal :height 120 :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "#333333" :background "#FFFFFF" :stipple nil :inherit nil))))
 '(cursor ((t (:background "#d73a49"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(escape-glyph ((t (:foreground "#008ED1"))))
 '(minibuffer-prompt ((t (:weight bold :foreground "black" :background "gold"))))
 '(highlight ((t (:underline nil :background "#FFF876"))))
 '(region ((t (:foreground "#ffffff" :background "#666"))))
 '(shadow ((t (:foreground "#7F7F7F"))))
 '(secondary-selection ((t (:weight bold :background "#FBE448"))))
 '(trailing-whitespace ((t (:background "#FFFF57"))))
 '(font-lock-builtin-face ((t (:foreground "#006FE0"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#8D8D84"))))
 '(font-lock-comment-face ((t (:slant italic :foreground "#8D8D84"))))
 '(font-lock-constant-face ((t (:foreground "#D0372D"))))
 '(font-lock-doc-face ((t (:foreground "#036A07"))))
 '(font-lock-function-name-face ((t (:weight normal :foreground "#006699"))))
 '(font-lock-keyword-face ((t (:weight normal :foreground "#0000FF"))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:foreground "#808080"))))
 '(font-lock-regexp-grouping-backslash ((t (:weight bold :inherit nil))))
 '(font-lock-regexp-grouping-construct ((t (:weight bold :inherit nil))))
 '(font-lock-string-face ((t (:foreground "#008000"))))
 '(font-lock-type-face ((t (:weight normal :foreground "#6434A3"))))
 '(font-lock-variable-name-face ((t (:weight normal :foreground "#BA36A5"))))
 '(font-lock-warning-face ((t (:weight bold :foreground "red"))))
 '(button ((t (:underline (:color foreground-color :style line) :foreground "#006DAF"))))
 '(link ((t (:weight normal :underline (:color foreground-color :style line) :foreground "#006DAF"))))
 '(link-visited ((t (:underline (:color foreground-color :style line) :foreground "#E5786D"))))
 '(fringe ((t (:foreground "#9B9B9B" :background "#EDEDED"))))
 '(header-line ((t (:weight bold :underline (:color "black" :style line) :overline "black" :foreground "black" :background "#FFFF88"))))
 '(tooltip ((t (:foreground "black" :background "light yellow"))))
 '(mode-line ((t (:background "#d73a49" :foreground "#111111" :box (:line-width 1 :color "#000000")))))
 '(mode-line-buffer-id ((t (:weight bold :foreground "white"))))
 '(mode-line-emphasis ((t (:weight bold :foreground "white"))))
 '(mode-line-highlight ((t (:foreground "yellow"))))
 '(mode-line-inactive ((t (:box (:line-width 1 :color "#4E4E4C" :style nil) :foreground "#F0F0EF" :background "#9B9C97"))))
 '(isearch ((t (:weight bold :underline (:color "#FF9632" :style line) :background "#FDBD33"))))
 '(isearch-fail ((t (:weight bold :foreground "black" :background "#FF9999"))))
 '(lazy-highlight ((t (:underline (:color "#FF9632" :style line) :background "#FFFF00"))))
 '(match ((t (:weight bold :background "#FBE448"))))
 '(next-error ((t (:underline nil :background "#FFF876"))))
 '(query-replace ((t (:inherit (isearch))))))

(provide-theme 'github)
