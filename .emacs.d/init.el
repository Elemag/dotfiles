(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
             ("marmalade" . "https://marmalade-repo.org/packages/")
             ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(color-theme-molokai)

(show-paren-mode)
(setq column-number-mode t)
;; backups
(setq backup-directory-alist '(("." . "~/.emacs.d/saves")))
(setq backup-by-copying-when-linked t)
;; cursor
(blink-cursor-mode 0)
(setq visible-cursor nil)
(global-hl-line-mode)
; disable toolbars
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
;; start maximized
(toggle-frame-maximized)
(put 'downcase-region 'disabled nil)
