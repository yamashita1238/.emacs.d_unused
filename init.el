;; パッケージ管理機能
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; 日本語入力にmozcを使う
(require 'mozc)
(set-language-environment "UTF-8")
(setq default-input-method "japanese-mozc")

(let ((default-directory "~/.emacs.d/elisp/"))
  (setq load-path (cons default-directory load-path))
  (normal-top-level-add-subdirs-to-load-path))

(require 'cl)

(setq exec-path (cons "/usr/local/bin" exec-path))
(show-paren-mode 0)    ; 対応する括弧の強調
(blink-cursor-mode 0)  ; カーソルの点滅
(column-number-mode t) ; カーソルが何文字目にいるか表示
(line-number-mode t)   ; カーソルが何行目にいるか表示
(setq scroll-step 2)   ; スクロール行数
(setq require-final-newline t) ; 最後に一行表示
(setq frame-title-format
      (format "emacs : %%f" (system-name))) ; フレームタイトルにファイル名を表示
(display-time)         ; モードラインに時間を表示
(which-function-mode 1) ; モードラインに今いる関数名を表示
(recentf-mode)         ; 最近使ったファイルを保存

;;whitespace
(require 'whitespace)
(setq whitespace-style
      '(tabs tab-mark spaces space-mark))
(setq whitespace-space-regexp "\\(\x3000+\\)")
(setq whitespace-display-mappings
      '((space-mark ?\x3000 [?\□])
	(tab-mark   ?\t   [?\xBB ?\t])
	))
(global-whitespace-mode 1)
(set-face-foreground 'whitespace-space "White")
(set-face-background 'whitespace-space "White")
(set-face-foreground 'whitespace-tab "LightSlateGray")
(set-face-background 'whitespace-tab "White")

;;font
(set-face-attribute 'default nil
		    :family "Ricty"
		    :height 107)
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Ricty"))

;; key bind
(define-key global-map "\C-z" 'undo)       ;undo by \C-z
(define-key global-map "\C-ci" 'recentf-open-files)  ;show and open files recently used
(define-key global-map "\C-u" 'scroll-down) ;\C-u = \M-v
(define-key global-map "\M-m" 'magit-status)
(define-key global-map "\M-l" 'magit-log)
(define-key global-map "\C-co" 'comment-or-uncomment-region) ;comment region
(define-key global-map "\C-x\C-x" 'shell) ;open shell

;;window
(if window-system
    (progn
      (set-frame-parameter nil 'alpha 100) ; 透明度
      (tool-bar-mode 0)                    ; ツールバー表示
      (set-scroll-bar-mode t)              ; スクロールバー表示
      (setq line-spacing 0.05)))           ; 行間

;; For OCaml
(setq auto-mode-alist (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)

;; haskell-mode
(load "~/.emacs.d/elisp/haskell-mode-2.8.0/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

(add-hook 'c-mode-hook '(lambda () (setq tab-width 4)))

;; Prolog
(require 'prolog)
(add-to-list 'auto-mode-alist '("\\.pl$" . prolog-mode))
(setq prolog-program-name "/usr/bin/gprolog")
(setq prolog-consult-string "[user].\n")

;; magit
(require 'magit)

;;git-gutter
(global-git-gutter-mode t)

;; flycheck
;; (require 'flycheck)
;; (add-hook 'c-mode-hook 'flycheck-mode)
