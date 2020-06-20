;; This is my emacs init oofies

;; Package Stuff
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Packages
(require 'use-package)
(use-package org
  :ensure t)

;; Org Mode
(require 'org)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (latex-preview-pane company-auctex auctex haskell-mode flycheck company-irony company-c-headers flycheck-clang-analyzer hungry-delete doom-modeline all-the-icons avy company-jedi slime-company slime company sudo-edit magit dashboard async pretty-mode projectile org org-mode which-key seoul256-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dashboard-banner-logo-title ((t (:inherit default :foreground "chocolate" :weight semi-bold :height 1.0))))
 '(org-document-info ((t (:foreground "pale turquoise" :weight extra-bold :height 2.0))))
 '(org-document-info-keyword ((t (:inherit shadow :weight normal :height 1.2))))
 '(org-document-title ((t (:foreground "pale turquoise" :weight ultra-bold :height 2.0))))
 '(org-level-1 ((t (:inherit outline-1 :weight semi-bold :height 2.1))))
 '(org-level-2 ((t (:inherit outline-2 :weight semi-bold :height 1.6))))
 '(org-level-3 ((t (:inherit outline-3 :weight semi-bold :height 1.3))))
 '(org-level-4 ((t (:inherit outline-4 :weight semi-bold :height 1.1)))))
