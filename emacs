; -*-Lisp-*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue)))
 '(inhibit-startup-screen t)
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set 'install-dir "~/Programs/emacs/")

(global-set-key (kbd "C-c c") 'compile)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-c C-c") 'comment-region)
(global-set-key (kbd "C-c g") 'goto-line)

(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(put 'upcase-region 'disabled nil)

;; underline line
(global-hl-line-mode 1)
(set-face-background 'highlight nil)
(set-face-foreground 'highlight nil)
(set-face-underline-p 'highlight t)

;; Show lines at left
(add-hook 'prog-mode-hook 'linum-mode)

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

;; C Mode stuff
(setq-default c-basic-offset 4)
;; open .h files in C++ mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; Tabs shit
(setq-default indent-tabs-mode nil)

(add-to-list 'load-path (concat install-dir "submodules/rust-mode/"))
(require 'rust-mode)

(add-to-list 'load-path (concat install-dir "submodules/lua-mode/"))
(require 'lua-mode)
