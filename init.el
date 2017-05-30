(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)


;; Use package - how does this work??
;;(unless (package-installed-p 'use-package)
;;  (package-refresh-contents)
;;  (package-install 'use-package))

;;(eval-when-compile
;;  (require 'use-package))

;; Cua Mode - for ctrl+c/ctrl+v windows style.
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; NeoTree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; Grab-stuff
(require 'drag-stuff)
(drag-stuff-mode t)
(drag-stuff-global-mode 1)
(drag-stuff-define-keys)

;; yasnippets and yasnippet-snippets
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"              ;; personal snippets
	"~/lib/yasnippet-snippets"         ;; the default collection
        ))
(yas-global-mode t)

;; js2-mode (javascript editing)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Do not word wrap by default
(setq-default truncate-lines 1)

;; Theme
 ;;(if (nil)
 ;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; '(ansi-color-names-vector
  ;;  ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 ;; '(custom-enabled-themes (quote (fogus)))
 ;; '(custom-safe-themes
 ;;   (quote
 ;;    ("3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" default))))
 ;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; )
 ;;)

;; Key bindings
(global-unset-key "\C-z")
(global-set-key "\C-z" 'undo)


;;
(setq x-stretch-cursor t) ;makes cursor lager when over tabs
(setq-default cursor-type 'bar)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-linum-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
