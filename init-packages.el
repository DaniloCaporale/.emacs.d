(require 'package)

(setq package-archives
'(("org"          . "http://orgmode.org/elpa/")
  ("melpa"        . "http://melpa.org/packages/")
  ("melpa-stable" . "http://stable.melpa.org/packages/")
  ("gnu"          . "http://elpa.gnu.org/packages/")))

(setq package-enable-at-startup nil)
(package-initialize t)

(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))

(let ((default-directory (expand-file-name user-emacs-directory "elpa")))
(normal-top-level-add-subdirs-to-load-path))

(require 'use-package)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Themes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; zenburn-theme
(use-package zenburn-theme
  :ensure t)

; cyberpunk-theme
(use-package cyberpunk-theme
  :ensure t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; user experience
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; undo-tree
(use-package undo-tree
  :ensure t)

; expand-region to quickly select base on semantics
(use-package expand-region
  :bind (("C-o" . er/expand-region)) ; italian keyboard
  :ensure t)

; TODO multiple cursors


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; version control: git
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package magit
  :ensure t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; C++ IDE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package cmake-mode
  :ensure t)

(use-package rtags
  :ensure t)

(use-package dash
  :ensure t)

(use-package cmake-ide
  :ensure t)
