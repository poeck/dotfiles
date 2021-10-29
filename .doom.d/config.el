;; -----------------
;;       Info
;; -----------------

(setq user-full-name "Paul Koeck"
      user-mail-address "paul@koeck.dev")

;; -----------------
;;     Packages
;; -----------------

(use-package emmet-mode)
(use-package prettier)
(use-package dart-mode)
(use-package web-mode)

;; -----------------
;;       Style
;; -----------------

;; (setq doom-theme 'doom-gruvbox)
(setq doom-theme 'doom-monokai-ristretto)
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
(add-hook 'web-mode-hook 'prettier-mode)
;; (add-hook 'web-mode-hook  'emmet-preview-mode)

;; -----------------
;;       Imba 
;; -----------------

(let ((default-directory (expand-file-name "packages" doom-private-dir)))
  (normal-top-level-add-subdirs-to-load-path))

(require 'imba-mode)

(add-hook 'imba-mode-hook
          (quote
           (lambda nil
             (auto-complete-mode 1)
             (setq ac-modes (append ac-modes '(imba-mode)))
             (ac-config-default)
             (setq-local whitespace-style
                         (quote
                          (face trailing tabs tab-mark)))
             (setq-local whitespace-display-mappings (quote ((tab-mark 9 [8594 9] [92 9]))))
             (whitespace-mode t)
             (set-face-foreground 'whitespace-tab "lightgray")
             (set-face-background 'whitespace-tab nil)
             (set-face-foreground 'whitespace-trailing "HotPink")
             (set-face-background 'whitespace-trailing "lightPink")
	         (setq-local electric-pair-skip-whitespace-chars (quote (9 10)))
             (setq-local auto-indent-untabify-on-visit-file 'tabify)
             (setq-local auto-indent-backward-delete-char-behavior nil)
             (setq-local auto-indent-untabify-on-save-file 'tabify)
             (setq-local auto-indent-newline-function 'newline-and-indent)
             (setq-local adaptive-fill-regexp "[\t]*")
             (outline-minor-mode 1)
             (setq-local outline-regexp "[[:space:]]*\\(tag...\\|def...\\|\\bdo....\\|class.\\|export\\)")
             )))

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
        (define-key vterm-mode-map [C-S-v] #'term-paste)
        (define-key vterm-mode-map [C-c] #'vterm-send-C-c)
        (setq vterm-keymap-exceptions nil)
)


;; -----------------
;;       Maps
;; -----------------

(map! :leader
      :desc "Next vterm"
      "t n" #'multi-vterm-next)

(map! :i "C-S-v" #'clipboard-yank)
