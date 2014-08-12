;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (global-auto-complete-mode auto-complete-mode auto-complete)
;;;;;;  "auto-complete" "auto-complete/auto-complete.el" (21405 30558))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global-Auto-Complete mode is enabled.
See the command `global-auto-complete-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete" "\
Toggle Auto-Complete mode in every possible buffer.
With prefix ARG, turn Global-Auto-Complete mode on if and only if
ARG is positive.
Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ac-config-default) "auto-complete-config" "auto-complete/auto-complete-config.el"
;;;;;;  (21405 30558))
;;; Generated autoloads from auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete-config" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-packages-of-type el-get-update-all
;;;;;;  el-get-version) "el-get" "el-get/el-get.el" (21405 28904))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (21405 28904))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (ghc-debug ghc-init) "ghc" "ghc-mod/elisp/ghc.el"
;;;;;;  (21405 31087))
;;; Generated autoloads from ghc-mod/elisp/ghc.el

(autoload 'ghc-init "ghc" "\
Not documented

\(fn)" nil nil)

(autoload 'ghc-debug "ghc" "\
Not documented

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("auto-complete/auto-complete-pkg.el" "el-get/el-get-autoloads.el"
;;;;;;  "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "fuzzy/fuzzy.el"
;;;;;;  "ghc-mod/elisp/ghc-check.el" "ghc-mod/elisp/ghc-command.el"
;;;;;;  "ghc-mod/elisp/ghc-comp.el" "ghc-mod/elisp/ghc-doc.el" "ghc-mod/elisp/ghc-func.el"
;;;;;;  "ghc-mod/elisp/ghc-indent.el" "ghc-mod/elisp/ghc-info.el"
;;;;;;  "ghc-mod/elisp/ghc-ins-mod.el" "ghc-mod/elisp/ghc-pkg.el"
;;;;;;  "ghc-mod/elisp/ghc-process.el" "popup/popup.el") (21405 31087
;;;;;;  686256))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
