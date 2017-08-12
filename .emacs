;;Use melpa packages repository
;;;Refresh packages M-x package-refresh-contents
(require 'package)
(add-to-list 'package-archives
	       '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize);;Uses all packages in ~/.emacs.d/elpa/
;;Search for packages with paradox-list-packages or list-packages

;;Yasnippet global mode
(yas-global-mode 1)

;;auto-complete configuration
(ac-config-default)

;;autopair
(autopair-global-mode)

;;column marker
(require 'column-marker)
(add-hook 'c++-mode-hook (lambda () (interactive) (column-marker-3 80)))
(add-hook 'python-mode-hook (lambda () (interactive) (column-marker-3 80)))
(add-hook 'latex-mode-hook (lambda () (interactive) (column-marker-3 80)))
;;C-u 80 M-x column-marker-3

;;latex-preview
;;(latex-preview-pane-enable);;activate with M-x latex-preview-pane-mode
;;(flyspell-mode);;flyspell for checking spelling
;;texlive info is under /usr/local/texlive/texmf-local
(add-hook 'latex-mode-hook 'flyspell-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(package-selected-packages
   (quote
    (flycheck undo-tree ace-window counsel swiper which-key try smex fill-column-indicator yasnippet paradox latex-preview-pane column-marker autopair auto-complete)))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;Set fill column
(setq-default fill-column 80)

;;Which key mode!  type C-x and wait to see available keys
(which-key-mode)

;;Disable menu and tool bar
(menu-bar-mode 0)
(tool-bar-mode 0)

;;Prevent start up screen 
(setq inhibit-splash-screen t)

;;Enable Backups
(setq make-backup-files t) 
(setq version-control t);;Last 5 versions of file saved

;;Silently delete old back up version of files
(setq delete-old-versions t)

;;Backup saved to this location
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

;;Line numbers
(global-linum-mode t)

;;turn off the bell!!!
(setq visible-bell t)

;;remapping keys
(global-set-key (kbd "<left>") 'backward-word)
(global-set-key (kbd "<right>") 'forward-word)
(global-set-key (kbd "<up>") 'backward-paragraph)
(global-set-key (kbd "<down>") 'forward-paragraph)

;;Add files to c++ mode
(add-to-list 'auto-mode-alist '("\\.opt\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.dat\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;;Enable ido helps to auto-complete C-x C-f
;;(require 'ido)
;;(ido-mode t)

;;Turn on smex for better M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;autopair is used currently for this
;;(require 'skeleton)
;;(setq skeleton-pair t)
;;(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
;;(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
;;(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
;;(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
;;(global-set-key (kbd "'") 'skeleton-pair-insert-maybe)

;;swiper recommended setup
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
;;(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)

;;Ace window setup
(global-set-key [remap other-window] 'ace-window)

;;Undo tree use C-x u to bring up undo tree
(global-undo-tree-mode)

;;Fly check
(global-flycheck-mode t)

