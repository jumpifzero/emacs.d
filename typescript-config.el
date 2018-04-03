;;; typescript-config.el --- Add support for typescript

;; Author: T. Almeida <tiago.b.almeida@gmail.com>
;; Version: 0.1
;; Package-Requires: 
;; Keywords: web, typescript
;; URL: http://example.com/jrhacker/superfrobnicate


;;; Commentary:

;;; Code:
(use-package tide :ensure t)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)
