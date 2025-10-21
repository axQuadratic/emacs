;; Language specific settings

(add-hook 'doc-view-mode-hook
	(display-line-numbers-mode -1))

(add-hook 'vterm-mode-hook
	(lambda ()
	   	(display-line-numbers-mode -1)))

(add-hook 'vterm-copy-mode-hook
	(lambda ()
	   	(display-line-numbers-mode 'toggle)))

