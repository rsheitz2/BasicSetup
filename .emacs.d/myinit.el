
;;org mode run code C-c C-c
;;(fset 'yes-or-no-p 'y-or-n-p)
;;(global-set-key (kbd "<f5>") 'revert-buffer)

;;remapping keys
(global-set-key (kbd "<left>") 'backward-word)
(global-set-key (kbd "<right>") 'forward-word)
(global-set-key (kbd "<up>") 'backward-paragraph)
(global-set-key (kbd "<down>") 'forward-paragraph)

;;Turn on smex for better M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;Yasnippet global mode
(yas-global-mode 1)

;;autopair
(autopair-global-mode)

;;column marker
(require 'column-marker)
(add-hook 'c++-mode-hook (lambda () (interactive) (column-marker-3 80)))
(add-hook 'python-mode-hook (lambda () (interactive) (column-marker-3 80)))
(add-hook 'latex-mode-hook (lambda () (interactive) (column-marker-3 80)))
;;C-u 80 M-x column-marker-3

;;Set fill column
(setq-default fill-column 80)

;;Which key mode!  type C-x and wait to see available keys
(which-key-mode)

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

;;Add files to c++ mode
(add-to-list 'auto-mode-alist '("\\.opt\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.dat\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;;latex-preview
;;(latex-preview-pane-enable);;activate with M-x latex-preview-pane-mode
;;(flyspell-mode);;flyspell for checking spelling
;;texlive info is under /usr/local/texlive/texmf-local
(add-hook 'latex-mode-hook 'flyspell-mode)

;;Enable ido helps to auto-complete C-x C-f
;;(require 'ido)
;;(ido-mode t)

;;autopair is used currently for this
;;(require 'skeleton)
;;(setq skeleton-pair t)
;;(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
;;(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
;;(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
;;(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
;;(global-set-key (kbd "'") 'skeleton-pair-insert-maybe)
