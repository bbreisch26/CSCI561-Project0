;;;;;;;;;;;;;;;;;;;
;;; SLIME Setup ;;;
;;;;;;;;;;;;;;;;;;;

(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")

;;; Highlight Matching Parenthesis ;;;
(show-paren-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;   Optional Settings  ;;;
;;; Uncomment as desired ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Bind a key for the slime-selector to quickly switch SLIME buffers
;; (global-set-key "\C-cl" 'slime-selector)

;;; Colors for dark backgrounds ;;;
;; (add-to-list 'default-frame-alist '(background-mode . dark))
;; (setq frame-background-mode 'dark)

;;; Viper Mode (VI-emulation) ;;;
;; (require 'viper)
;; (setq viper-mode t)
;; (setq viper-always t)

;;; Magit-mode (Git porcelain)
;;;
;;; See https://magit.vc/ for installation
;; (global-set-key "\C-cc" 'magit-status)

;;; AUCTeX (LaTeX mode)
;;; see https://www.gnu.org/software/auctex/

;;; Local Variables:
;;; mode: emacs-lisp
;;; End:
