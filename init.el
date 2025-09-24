(require-theme 'modus-themes)
(require 'package)
(require 'rust-mode)

;; Enable the MELPA repo for package.el
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Extrude variables added by custom to their own file
(setq-default custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; Use-packages are loaded from this file
(setq-default package-file (locate-user-emacs-file "installed-packages.el"))
(load package-file 'noerror 'nomessage)

;; Hooks and language-specific settings are loaded from this file
(setq-default lang-file (locate-user-emacs-file "language-settings.el"))
(load lang-file 'noerror 'nomessage)

;; Functionality
(setq-default org-return-follows-link t
      case-fold-search t
      truncate-lines t
      inhibit-startup-message t
      tab-width 4)

;; Major modes love to clobber this one, and I *absolutely do not want it set to anything other than this*
(put 'indent-line-function 'permanent-local t)
(setq-default indent-line-function 'tab-to-tab-stop)

;; If that still doesn't stop them, here's the nuclear option
(add-hook 'after-change-major-mode-hook
		  (lambda ()
			(setq indent-line-function 'tab-to-tab-stop)))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(indent-tabs-mode -1)
(recentf-mode 1)
(save-place-mode 1)
(blink-cursor-mode 0) 
(electric-pair-mode 1)
(global-display-line-numbers-mode 1)

(fset 'yes-or-no-p 'y-or-n-p)

;; Corfu settings
(global-corfu-mode 1)

(setq-default corfu-auto t
	  corfu-quit-no-match t)

;; Visuals
(set-frame-font "CozetteVector 13" nil t)

(setq-default modus-vivendi-palette-overrides
      '((cursor "#ee7f01")
		(bg-main "#070707")
		(bg-dim "#0f0f0f")
	 
        (border "#0f0f0f")

		(fg-line-number-inactive "#959595")
        (fg-line-number-active "#ee7f01")
		(bg-line-number-inactive "#0f0f0f")
        (bg-line-number-active "#0f0f0f")

	  
		(fg-mode-line-active "#000000")
        (bg-mode-line-active "#ee7f01")
		(border-mode-line-active "#ee7f01")
	  
        (border-mode-line-inactive "#ee7f01")
		(bg-mode-line-inactive "#0f0f0f")

        (modeline-warning "#df8443")

		(fg-prompt "#ee7f01")

		(bg-completion "#0f0f0f")
		(fg-completion-match-0 "#ee7f01")
		(fg-completion-match-1 "de6f00")
		(fg-completion-match-2 "ce5f00")
		(fg-completion-match-3 "be4f00")))

(load-theme 'modus-vivendi t)
(put 'upcase-region 'disabled nil)
