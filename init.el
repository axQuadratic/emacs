(require-theme 'modus-themes)
(require 'package)

;; Enable the MELPA repo for package.el
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Extrude variables added by custom to their own file
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; Use-packages are loaded from this file
(setq package-file (locate-user-emacs-file "installed-packages.el"))
(load package-file 'noerror 'nomessage)

;; Functionality
(setq org-return-follows-link t
      case-fold-search t
      truncate-lines t
      inhibit-startup-message t
      indent-tabs-mode nil
      tab-width 4)

(menu-bar-mode t) ; I am told this is helpful for discoverability
(tool-bar-mode -1)
(scroll-bar-mode -1)
(recentf-mode 1)
(save-place-mode 1)
(blink-cursor-mode 0) 
(electric-pair-mode 1)
(global-display-line-numbers-mode 1)

(fset 'yes-or-no-p 'y-or-n-p)

;; Corfu settings
(global-corfu-mode 1)

(setq corfu-auto t
      corfu-quit-no-match t)

;; Visuals
(set-frame-font "CozetteVector 13" nil t)

(setq modus-vivendi-palette-overrides
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
