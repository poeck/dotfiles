;; -----------------
;;       Info
;; -----------------

(setq user-full-name "Paul Koeck"
      user-mail-address "paul@koeck.dev")

;; -----------------
;;     Packages
;; -----------------

(use-package emmet-mode)
(use-package prettier-js)
(use-package dart-mode)
(use-package web-mode)

;; -----------------
;;       Style
;; -----------------

(setq doom-theme 'doom-gruvbox)
(setq org-directory "~/org/")
(setq display-line-numbers-type 'relative)
(setq default-frame-alist '((undecorated . t)))

;; -----------------
;;       Font
;; -----------------

(setq doom-font (font-spec :family "CascadiaCode Nerd Font" :size 16)
      doom-variable-pitch-font (font-spec :family "Noto Sans" :size 16)
      doom-big-font (font-spec :family "CascadiaCode Nerd Font" :size 24))

;; -----------------
;;      Window
;; -----------------

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(fullscreen . fullheight))

;; -----------------
;;   Multi-Cursor
;; -----------------

(require 'multiple-cursors)

(map! :leader
      :desc "Next vterm"
      "t n" #'multi-vterm-next)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-,") 'mc/mark-next-like-this)
(global-set-key (kbd "C-S-,") 'mc/mark-all-like-this)

;; -----------------
;;     Web-Mode
;; -----------------

(add-to-list 'auto-mode-alist '("\\.json\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.xml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))

;; Typescript
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-tsx-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-tsx-mode))

;; Javascript
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . javascript-mode))

;; Hooks
(add-hook 'web-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook  'emmet-preview-mode)

;; -----------------
;;     Flutter
;; -----------------

(add-to-list 'auto-mode-alist '("\\.dart\\'" . dart-mode))

(use-package flutter
  :after dart-mode
  :bind (
         :map dart-mode-map
         ("C-M-x" . #'flutter-run-or-hot-reload)
        )
  :custom (flutter-sdk-path "/snap/bin/flutter/")
)

;; -----------------
;;   Multi-VTerm
;; -----------------

(use-package multi-vterm
	:config
	(add-hook 'vterm-mode-hook
	(lambda ()
	(setq-local evil-insert-state-cursor 'box)
	(evil-insert-state)))
	(define-key vterm-mode-map [return] #'vterm-send-return)
	(setq vterm-keymap-exceptions nil)
)


;; -----------------
;;       Maps
;; -----------------

(map! :leader
      :desc "Next vterm"
      "t n" #'multi-vterm-next)

(map! :i "C-S-v" #'clipboard-yank)
