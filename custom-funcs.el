;; Custom functions loaded by init.el

(defun open-file-in-present-mode (FILENAME)
    (interactive "fOpen file in present mode: ")
    (select-frame-set-input-focus (make-frame '((minibuffer . nil))))
    (find-file FILENAME)
    (display-line-numbers-mode -1)
    (hide-mode-line-mode 1)
    (doc-view-fit-height-to-window)
    (doc-view-first-page))

(defun delete-tab ()
	(interactive)
   	(setq processed-chars 0)
	(while (< processed-chars 4)
		(if (or (= (preceding-char) 9) (= (preceding-char) 32))
			(backward-delete-char-untabify 1)
			())
		(setq processed-chars (+ processed-chars 1))))
