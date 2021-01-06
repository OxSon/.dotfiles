(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(solarized-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; EVIL mode
(require 'evil)
(evil-mode 1)

;; unicode abbreviations (mostly for racket)
(define-abbrev-table 'global-abbrev-table
  '(("lambda" "λ")
    ("alpha" "α")
    ("inf" "∞")))


;(defmacro def-global-minor (mode)
 ; (list 'define-globalized-minor-mode 'my-global-,mode)

(define-globalized-minor-mode my-global-abbrev-mode abbrev-mode
  (lambda () (abbrev-mode 1)))

(define-globalized-minor-mode my-global-show-paren-mode show-paren-mode
  (lambda () (show-paren-mode 1)))

(my-global-abbrev-mode 1)
(my-global-show-paren-mode 1)

;; solarized
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(load-theme 'solarized t)
;; dark
(set-frame-parameter nil 'background-mode 'dark)
(set-terminal-parameter nil 'background-mode 'dark)
