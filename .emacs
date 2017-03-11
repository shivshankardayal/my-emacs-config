;;; package --- Summary
;;; Code:
;;; Commentary:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(ecb-layout-name "leftright2")
 '(ecb-windows-width 0.17)
 '(make-backup-files nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(tab-stop-list (quote (4)))
 '(x-stretch-cursor t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier 10 Pitch" :foundry "adobe" :slant normal :weight normal :height 126 :width normal)))))
(setq-default
 tab-width 4
 standard-indent 4
 indent-tabs-mode nil)
(setq tab-stop-list (number-sequence 4 200 4))  
(add-to-list 'load-path
             "~/.emacs.d/ecb")
(setq ispell-program-name "/usr/bin/ispell")
(setenv "PATH" (concat (getenv "PATH") ":/opt/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))
(load-file "~/.emacs.d/lisp/sr-speedbar.el")
;;(sr-speedbar-open)

(setq stack-trace-on-error nil)
(setq ecb-version-check nil)
(require 'ecb)
;;(ecb-activate)
(defun turn-on-flyspell () (flyspell-mode 1))
(add-hook 'find-file-hooks 'turn-on-flyspell)

;;(require 'color-theme-solarized)
;;(color-theme-solarized-light)

;; custom c editing mode
(setq c-default-style "linux"
      c-basic-offset 2)
(setq-default c-basic-offset 2
              tab-width 2
              indent-tabs-mode nil)


;; By an unknown contributor. Match parentheses like VI

(global-set-key "%" 'match-paren)

(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time
;; Docbook Macros
(fset 'p
       [?< ?> left ?d ?: ?p ?a ?r ?a right ?< ?> left ?/ ?d ?: ?p ?a ?r ?a M-left M-left left left])
(fset 'c
       [?< ?> left ?d ?: ?c ?o ?d ?e right ?< ?> left ?/ ?d ?: ?c ?o ?d ?e C-left C-left left left])
(fset 'l
       [?< ?> left ?d ?: ?l ?i ?n ?k ?  ?x ?l ?i ?n ?k ?: ?h ?r ?e ?f ?= ?\" ?\" right ?< ?> left ?/ ?d ?: ?l ?i ?n ?k C-left C-left left left])
(fset 's
       [?< ?> left ?d ?: ?s ?e ?c ?t ?i ?o ?n right return ?< ?> left ?/ ?d ?: ?s ?e ?c ?t ?i ?o ?n up])
(fset 'ti
       [?< ?> left ?d ?: ?t ?i ?t ?l ?e right ?< ?> left ?/ ?d ?: ?t ?i ?t ?l ?e C-left C-left left left])
(fset 'ieq
       [?< ?> left ?d ?: ?i ?n ?l ?i ?n ?e ?e ?q ?u ?a ?t ?i ?o ?n right ?< ?> left ?/ ?d ?: ?i ?n ?l ?i ?n ?e ?e ?q ?u ?a ?t ?i ?o ?n C-left C-left left left])
(fset 'it
       [?< ?> left ?d ?: ?e ?m ?p ?h ?a ?s ?i ?s ?  ?r ?o ?l ?e ?= ?\" ?\" left ?i ?t ?a ?l ?i ?c right right ?< ?> left ?/ ?d ?: ?e ?m ?p ?h ?s ?i ?s left left left ?a C-left C-left left left])
(fset 'bf
       [?< ?> left ?d ?: ?e ?m ?p ?h ?a ?s ?i ?s right left ?  ?r ?o ?l ?e ?= ?\" ?\" left ?b ?o ?l ?d right right ?< ?> left ?/ ?d ?: ?e ?m ?p ?h ?s ?i ?s left left left ?a left left left left left left left left left])
(fset 's1
       [?< ?> left ?d ?: ?s ?e ?c ?t ?1 right ?< ?> left ?/ ?d ?: ?s ?e ?c ?t ?1 M-left M-left left left])
(fset 's2
       [?< ?> left ?d ?: ?s ?e ?c ?t ?2 right ?< ?> left ?/ ?d ?: ?s ?e ?c ?t ?2 M-left M-left left left])
(fset 's3
       [?< ?> left ?d ?: ?s ?e ?c ?t ?3 right ?< ?> left ?/ ?d ?: ?s ?e ?c ?t ?3 M-left M-left left left])
(fset 's4
       [?< ?> left ?d ?: ?s ?e ?c ?t ?4 right ?< ?> left ?/ ?d ?: ?s ?e ?c ?t ?4 M-left M-left left left])
(fset 's5
       [?< ?> left ?d ?: ?s ?e ?c ?t ?5 right ?< ?> left ?/ ?d ?: ?s ?e ?c ?t ?5 M-left M-left left left])
(fset 's6
       [?< ?> left ?d ?: ?s ?e ?c ?t ?6 right ?< ?> left ?/ ?d ?: ?s ?e ?c ?t ?6 M-left M-left left left])
(fset 'pro
       [?< ?> left ?d ?: ?p ?r ?o ?g ?r ?a ?m ?l ?i ?s ?t ?i ?n ?g right ?< ?> left ?/ ?d ?: ?p ?r ?o ?g ?r ?a ?m ?l ?i ?s ?t ?i ?n ?g C-left C-left left left])
(fset 'pro
       [?< ?> left ?d ?: ?p ?r ?o ?g ?r ?a ?m ?l ?i ?s ?t ?i ?n ?g right ?< ?/ ?d ?: ?p ?r ?o ?g ?r ?a ?m ?l ?i ?s ?t ?i ?n ?g ?> M-left M-left left left])
(fset 'il
       [?< ?> left ?d ?: ?i ?t ?e ?m ?i ?z ?e ?d ?l ?i ?s ?t right ?< ?/ ?d ?: ?i ?t ?e ?m ?i ?z ?e ?d ?l ?i ?s ?t ?> M-left M-left left left])
(fset 'ol
       [?< ?> left ?d ?: ?o ?r ?d ?e ?r ?e ?d ?l ?i ?s ?t right ?< ?> left ?/ ?d ?: ?o ?r ?d ?e ?r ?e ?d ?l ?i ?s ?t M-left M-left left left])
(fset 'li
       [?< ?> left ?d ?: ?l ?i ?s ?t ?i ?t ?e ?m right ?< ?/ ?d ?: ?l ?i ?s ?t ?i ?t ?e ?m ?> M-left M-left left left])
(fset 'footnote
       [?< ?> left ?d ?: ?f ?o ?o ?t ?n ?o ?t ?e right ?< ?> left ?? backspace ?/ ?d ?: ?f ?o ?o ?t ?n ?o ?t ?e M-left M-left left left])
(fset 'screen
       [?< ?> left ?d ?: ?s ?c ?r ?e ?e ?n right ?< ?> left ?/ ?d ?: ?s ?c ?r ?e ?e ?n M-left M-left left left])
(fset 'quo
       [?< ?> left ?d ?: ?q ?u ?o ?t ?e right ?< ?> left ?/ ?d ?: ?q tab ?u ?o ?t ?e M-left M-left left left])
(fset 'bq
       [?< ?> left ?d ?: ?b ?l ?o ?c ?k ?q ?u ?o ?t ?e right ?< ?> left ?/ ?d ?: ?b ?l ?o ?c ?k ?q ?u ?o ?t ?e M-left M-left left left])
(fset 'cdt
       [?< ?! ?\[ ?C ?D ?A ?T ?A ?\[ ?\] ?\] ?> left left left])
(fset 'note
       [?< ?> left ?d ?: ?n ?o ?t ?e right ?< ?> left ?/ ?d ?: ?n ?o ?t ?e M-left M-left left left])
(fset 'desc
       [?\M-x ?p ?a ?r ?a return ?\M-x ?b ?f return ?D ?e ?s ?c ?r ?i ?t backspace ?p ?t ?i ?o ?n ?\C-x])
(fset 'fp
       [?< ?> left ?d ?: ?f ?o ?o ?t ?n ?o ?t ?e right ?< ?> left ?d ?: ?p ?a ?r ?a right ?< ?> left ?/ ?d ?: ?p ?a ?r ?a right ?< ?> left ?/ ?d ?: ?f ?o ?o ?t ?n ?o ?t ?e M-left M-left M-left M-left left left])
(fset 'syn
       [?< ?> left ?d ?: ?p ?a ?r ?a right ?< ?> left ?d ?: ?e ?m ?p ?h ?a ?s ?i ?s ?  ?r ?o ?l ?e ?= ?\" ?\" left ?b ?o ?l ?d right right ?< ?> left ?/ ?d ?: ?e ?m ?p ?h ?a ?s ?i ?s right ?< ?> left ?/ ?d ?: ?p ?a ?r ?a M-left M-left M-left M-left left left ?S ?y ?n ?p backspace ?o ?p ?s ?u ?y ?s backspace backspace backspace ?i ?s ?\C-e])
(fset 'desc
       [?< ?> left ?d ?: ?p ?a ?r ?a right ?< ?> left ?d ?: ?e ?m ?p ?h ?a ?s ?i ?s ?  ?r ?o ?l ?e ?= ?\" ?\" left ?b ?o ?l ?d right right ?< ?> left ?/ ?d ?: ?e ?p backspace ?m ?p ?h ?a ?s ?i ?s right ?< ?> left ?/ ?d ?: ?p ?a ?r ?a M-left M-left M-left M-left left left ?D ?e ?s ?c ?r ?i ?p ?t ?i ?o ?n ?\C-e])
(fset 'ret
       [?< ?> left ?d ?: ?p ?a ?r ?a right ?< ?> left ?d ?: ?e ?m ?p ?h ?a ?s ?i ?s ?  ?r ?o ?l ?e ?= ?\" ?\" left ?b ?o ?l ?d right right ?< ?> left ?/ ?d ?: ?e ?m ?p ?h ?a ?s ?i ?s right ?< ?> left ?/ ?d ?: ?p ?a ?r ?a M-left M-left M-left M-left left left ?R ?e ?t ?u ?r ?n ?s ?\C-e ?\C-x])
(fset 'cp
       [?< ?> left ?d ?: ?p ?r ?o ?g ?r ?a ?m ?l ?i ?s ?t ?i ?n ?g ?  ?r ?o ?l ?e ?= ?\" ?C ?L ?e ?x ?e ?r ?\" right ?< ?! ?\[ ?C ?D ?A ?T ?A ?\[ ?\] ?\] ?> ?< ?> left ?/ ?d ?: ?p ?r ?o ?g ?r ?a ?m ?l ?i ?s ?t ?i ?n ?g M-left M-left left left left left left])
(fset 'sr
       "&#xa7; iso.")
(fset 'i
       [?< ?> left ?d ?: ?i ?n ?d ?e ?x ?t ?e ?r ?m right ?< ?> left ?/ ?d ?: ?i ?n ?d ?e ?x ?t ?e ?r ?m M-left M-left left left])
(fset 'pr
       [?< ?> left ?d ?: ?p ?r ?i ?m ?a ?r ?y right ?< ?> left ?d ?: ?p ?r ?i ?m ?a ?r ?y M-left left left ?/ left left])
(fset 'sc
       [?< ?> left ?d ?: ?s ?e ?c ?o ?n ?d ?a ?r ?y right ?< ?> left ?/ ?d ?: ?s ?e ?c ?o ?n ?d ?a ?r ?y M-left M-left left left])
;;(fset 'xr
;;       [?< ?> left ?d ?: ?x ?r ?e ?f ?  ?l ?i ?n ?k ?e ?n ?d ?= ?\" ?\" ?  ?/ left left left])
;;(fset 'uli
;;       [?< ?> left ?d ?: ?u ?l ?i ?n ?k ?  ?u ?r ?l ?= ?\" ?\" right ?< ?> left ?d ?: ?c ?i ?t ?e ?t ?i ?t ?l ?e right ?< ?> left ?/ ?d ?: ?c ?i ?t ?e ?t ?i ?t ?l ?eright ?< ?> left ?/ ?d ?: ?u ?l ?i ?n ?k C-left C-left C-left C-left C-left C-left left left left])
;;(fset 'ifeq
;;    [?< ?> left ?d ?: ?i ?n ?f ?o ?r ?m ?a ?l ?e ?q ?u ?a ?t ?i ?o ?n right ?< ?> left ?/ ?d ?: ?i ?n ?f ?o ?r ?m ?a ?l ?e ?q ?u ?a ?t ?i ?o ?n C-left C-left left left])
;;(fset 'm
;;   [?: ?m ?a ?t ?h ?: ?` ?` left])
;;(fset 'mm
;;   [?. ?. ?  ?m ?a ?t ?h ?: ?: return tab])
;;(fset 's
;;   [?\\ ?s ?q ?r ?t ?\{ ?\} left])
;;(fset 'f
;;   [?\\ ?f ?r ?a ?c ?\{ ?\} ?\{ ?\} left left left])
;;(fset 't
;;   [?\\ ?t ?e ?x ?t ?\{ ?\} left])
;;(fset 'ra
;;   "\\Rightarrow ")
;;(fset 'lra
;;      "\\Leftrightarrow\C-x")
;;(fset 'thr
;;   [?\\ ?t ?h ?e ?r ?e ?f ?o ?r ?e ? ])

(add-hook 'after-init-hook #'global-flycheck-mode)
(setq tbbr-md "all")
(defun toggle-tabbar-mode ()
  "Toggles tabbar modes - all buffers vs. defined in the `tabbar-buffer-groups'."
  (interactive)
  (if (string= tbbr-md "groups")
      (progn ;; then
        (setq tabbar-buffer-groups-function
              (lambda ()
                (list "All")))
        (setq tbbr-md "all"))
    (progn ;; else
      (setq tabbar-buffer-groups-function 'tabbar-buffer-groups)
      (setq tbbr-md "groups"))))
(setq-default show-ws-toggle-show-tabs 1)

(add-hook 'go-mode-hook
          (lambda ()
            (setq-default)
            (setq tab-width 4)
            (setq standard-indent 4)))

(setq inhibit-startup-message t) ;; no startup screen


;; <C-tab> for buffer switching only for file buffers

(defvar *buffcycle-ibuffer-time* 0.5)
(defvar *buffcycle-last-time* (float-time))

(defun next-buffer-cycle()
  (interactive)
  (let ((cur-buffer (buffer-name))
        (time-diff 0.0))
    (progn (setq time-diff (- (float-time) *buffcycle-last-time*))
           (if (>= *buffcycle-ibuffer-time* time-diff)
               (progn (setq *buffcycle-last-time* (float-time))
                      (ibuffer)))
           (next-buffer)
           (while (and (booleanp (buffer-file-name)) (not (string= (buffer-name) cur-buffer)))
             (next-buffer))
           (setq *buffcycle-last-time* (float-time)) 
           (if (string= cur-buffer (buffer-name))
               (ibuffer)))))

(defun kill-this-buffer-if-not-scratch()
  (interactive)
  (if (window-dedicated-p (selected-window))
      (message "this is dedicated window")
    (if (not (string= (buffer-name) "*scratch*"))
        (kill-this-buffer)
      (message "this is scratch unkillable"))))

;; Buffer Cycling keybindings
(global-set-key (kbd "<C-tab>") 'next-buffer-cycle)
(global-set-key (kbd "C-q") 'kill-this-buffer-if-not-scratch)

(provide 'buffcycle)


;; add include directory for flycheck mode

(add-hook 'c++-mode-hook
          (lambda () (setq flycheck-clang-include-path
                           (list (expand-file-name "../include/"))))
          (lambda () (setq c-set-style "stroustrup")))

(require 'hideshow)
(require 'sgml-mode)
(require 'nxml-mode)

(add-to-list 'hs-special-modes-alist
             '(nxml-mode
               "<!--\\|<[^/>]*[^/]>"
               "-->\\|</[^/>]*[^/]>"

               "<!--"
               sgml-skip-tag-forward
               nil))



(add-hook 'nxml-mode-hook 'hs-minor-mode)

;; optional key bindings, easier than hs defaults
(define-key nxml-mode-map (kbd "C-c h") 'hs-toggle-hiding)

;;;; This snippet enables lua-mode
;; This line is not necessary, if lua-mode.el is already on your load-path
(add-to-list 'load-path "/path/to/directory/where/lua-mode-el/resides")

(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(defun kw ()
  "Kill the whitespace between two non-whitespace characters"
  (interactive "*")
  (save-excursion
    (save-restriction
      (save-match-data
        (progn
          (re-search-backward "[^ \t\r\n]" nil t)
          (re-search-forward "[ \t\r\n]+" nil t)
          (replace-match "" nil nil))))))
(tool-bar-mode -1)
;;; .emacs ends here

