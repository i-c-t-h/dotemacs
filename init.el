;;; -*- lexical-binding: t -*-

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(use-package auto-package-update
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq mac-command-modifier 'control)
(setq mac-control-modifier 'meta)

(setq custom-file "~/.emacs.d/custom.el")
(if (file-exists-p custom-file)
    (load custom-file))

(use-package zenburn-theme
  :config
  (load-theme 'zenburn t)
  (set-cursor-color "red"))

(set-frame-font "Hack 14" nil t)

(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(split-window-right)

(org-babel-load-file "~/.emacs.d/g.org")
