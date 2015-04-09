;; パッケージ管理機能
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;; サーバ
(require 'server)
(unless (server-running-p) ;; 複数サーバ起動を防ぐ
  (server-start))

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
(blink-cursor-mode t)  ; カーソルの点滅
(column-number-mode t) ; カーソルが何文字目にいるか表示
(line-number-mode t)   ; カーソルが何行目にいるか表示
(setq scroll-step 2)   ; スクロール行数
(setq require-final-newline t) ; 最後に一行表示
(setq frame-title-format
      (format "emacs : %%f" (system-name))) ; フレームタイトルにファイル名を表示
(display-time)         ; モードラインに時間を表示
(which-function-mode 1) ; モードラインに今いる関数名を表示
(recentf-mode)         ; 最近使ったファイルを保存
(setq-default tab-width 4           ; タブ幅 = 4
              indent-tabs-mode nil) ; タブをインデントに使わない


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
(define-key global-map "\C-z" 'undo-tree-visualize)  ;undo-tree by \C-z
(define-key global-map "\C-ci" 'recentf-open-files)  ;show and open files recently used
(define-key global-map "\C-u" 'scroll-down) ;\C-u = \M-v
(define-key global-map "\M-m" 'magit-status)
(define-key global-map "\M-l" 'magit-log)
(define-key global-map "\C-co" 'comment-or-uncomment-region) ;comment region
(define-key global-map "\C-x\C-x" 'shell) ;open shell
(define-key global-map [?\C-.] 'other-window) ;\C-. = \C-xo
(define-key global-map [?\C-,] 'previous-multiframe-window) ;go back buffer
(define-key global-map "\C-x\C-b" 'bs-show)  ;bs-show

;; window
(if window-system
    (progn
      (add-to-list 'default-frame-alist '(foreground-color . "navy")) ; the default color of characters
      (add-to-list 'default-frame-alist '(background-color . "white")) ; the default color of background
      (add-to-list 'default-frame-alist '(cursor-color . "black")) ; the default color of cursor
      (set-face-foreground 'font-lock-string-face "DarkMagenta") ; the color of strings
      (set-face-foreground 'font-lock-keyword-face "blue1") ; the color of keywords
      (add-to-list 'default-frame-alist '(cursor-type . bar)) ; the form of cursor
      (set-frame-parameter nil 'alpha 100) ; 透明度
      (tool-bar-mode 0)                    ; ツールバー表示
      (set-scroll-bar-mode t)              ; スクロールバー表示
      (setq line-spacing 0.01)))           ; 行間

;; cursor
(setq global-visual-line-mode t) ; cursor move 'visually' next or previous line

;; For OCaml
(setq auto-mode-alist (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(setq tuareg-use-smie nil)

;; For Haskell
(load "~/.emacs.d/elisp/haskell-mode-2.8.0/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

(add-hook 'c-mode-hook '(lambda () (setq tab-width 4)))

;; For Prolog
(require 'prolog)
(add-to-list 'auto-mode-alist '("\\.pl$" . prolog-mode))
(setq prolog-program-name "/usr/bin/gprolog")
(setq prolog-consult-string "[user].\n")

;; magit
(require 'magit)
(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")

;;git-gutter
;; (global-git-gutter-mode t)

;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode)

;; flycheck
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
