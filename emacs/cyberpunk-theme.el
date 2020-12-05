;;; cyberpunk.el --- Custom theme for faces  -*- lexical-binding:t -*-

;;; Code:

(deftheme cyberpunk
  "Punchy Cyberpunk theme to feel the ecstasy of programming.")

(let ((class '((class color) (min-colors 89))))
 (custom-theme-set-faces
   'cyberpunk
   `(default ((,class (:background "#101116" :foreground "#FF0055"))))
   `(cursor ((,class (:foreground "#00FFC8" :background "#00FFC8"))))
   ;; Highlighting faces
   `(highlight ((,class (:background "#311B92"))))
   ;; Mode line faces
   `(mode-line ((,class (:foreground "#ff0055" :background "#1d000a"))))
   `(mode-line-inactive ((,class (:foreground "#ff0055" :background "#000000"))))
   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground "#00b0ff"))))
   `(font-lock-constant-face ((,class (:foreground "#76C1FF"))))
   `(font-lock-variable-name-face ((,class (:foreground "#EEFFFF"))))
   `(font-lock-function-name-face ((,class (:foreground "#00b0ff"))))
   `(font-lock-keyword-face ((,class (:foreground "#d57bff"))))
   `(font-lock-preprocessor-face ((,class (:foreground "#00FF9C"))))
   `(font-lock-type-face ((,class (:foreground "#00FF9C"))))
   `(font-lock-comment-face ((,class (:foreground "#6766b3" :slant italic))))
   `(font-lock-string-face ((,class (:foreground "#76C1FF"))))
   `(font-lock-warning-face ((,class (:foreground "#009550" :weight bold))))
   ;; Compilation faces
   `(next-error ((,class (:inherit region :background "SkyBlue"))))
   `(compilation-error ((,class (:background "#ff3270" :underline t :weight
 bold))))
   `(compilation-info ((,class (:foreground "#76C1FF")))) ))

(provide-theme 'cyberpunk)

;;; cyberpunk.el ends here
