;;; -*- lexical-binding: t -*-
;; 全部 inherit で作った theme があってもよさそうというアイデア。
;; 根本の face を set-face-attribue するだけでダイナミックに色を変えられる。
;; メタ・カラースキーム的な考え方とも相性がいい。

;; 自分の init.el で my-make-color して作っているような色たちをどうするか。

(defface elemental-bright-bg-face
  '((t (:background "#282f36")))
  "Bright BG face for elemental-theme. This face is expected to
be brighter than `default' but darker than
`elemental-brighter-bg-face'. Used to highlight the current-line,
inactive modeline, etc."
  :group 'elemental-theme)

(defface elemental-brighter-bg-face
  '((t (:background "#373d44")))
  "Brighter BG face for elemental-theme. This face is expected to
be brighter than `elemental-bright-bg-face'. Used to highlight
active modeline."
  :group 'elemental-theme)

(defface elemental-highlight-bg-1-face
  '((t (:background "#464c52")))
  "Accent BG face for elemental-theme. Used to highlight matches,
etc."
  :group 'elemental-theme)

(defface elemental-highlight-bg-2-face
  '((t (:background "#7d3539")))
  "Accent BG face for elemental-theme. Used to highlight selected match,
etc."
  :group 'elemental-theme)

(defface elemental-hidden-fg-face
  '((t (:foreground "#192129")))
  "Hidden FG Face for elemental-theme. Foreground color is
expected to be the same as the background color of the `default'
face."
  :group 'elemental-theme)

(defface elemental-darker-fg-face
  '((t (:foreground "#3b4146")))
  "Darker FG face for elemental-theme. This face is expected to
be darker than `elemental-dark-fg-face' and nearly
invisible. Used to render non-character UI parts like indent
guide."
  :group 'elemental-theme)

(defface elemental-dark-fg-face
  '((t (:foreground "#616466")))
  "Dark FG face for elemental-theme. This face is expected to be
darker than `default' but brighter than
`elemental-darker-fg-face'. Used to highlight muted text like
comment, docstring, etc."
  :group 'elemental-theme)

(defface elemental-bright-fg-face
  '((t (:foreground "#a4a19e")))
  "Bright FG face for elemental-theme. This face is expected to
be brighter than `default'. Used to highlight emphasized texts."
  :group 'elemental-theme)

(defface elemental-accent-fg-1-face
  '((t (:foreground "#c0c0c0")))
  "An accent face for elemental-theme. Used to highlight special
texts like links."
  :group 'elemental-theme)

(defface elemental-accent-fg-2-face
  '((t (:foreground "#c0c0c0")))
  "An accent face for elemental-theme. Used to highlight special
texts like visited links."
  :group 'elemental-theme)

(defface elemental-accent-fg-3-face
  '((t (:foreground "#e0b776")))
  "An accent face for elemental-theme. Used to highlight type
names, etc."
  :group 'elemental-theme)

(defface elemental-accent-fg-4-face
  '((t (:foreground "#649d8a")))
  "An accent face for elemental-theme. Used to highlight prompt,
string, etc."
  :group 'elemental-theme)

(defface elemental-red-face
  '((t (:foreground "#ff8683")))
  "Red face for elemental-theme."
  :group 'elemental-theme)

(defface elemental-blue-face
  '((t (:foreground "#c0c0c0")))
  "Blue face for elemental-theme."
  :group 'elemental-theme)

(defface elemental-green-face
  '((t (:foreground "#9e9e9e")))
  "Green face for elemental-theme."
  :group 'elemental-theme)

(defface elemental-orange-face
  '((t (:foreground "#729fcf")))
  "Orange face for elemental-theme."
  :group 'elemental-theme)

(defconst elemental-faces-list
  (mapcar
   (lambda (x)
     `(,(car x)
       ((t (:foreground unspecified :background unspecified ,@(cdr x))))))
   '(;; ----- special faces -----
     (default :background "#192129" :foreground "#7d7d7d")
     (cursor :background "#7d7d7d")

     ;; ----- basic -----
     (shadow :inherit elemental-dark-fg-face)
     (link :inherit elemental-accent-fg-1-face :underline t)
     (link-visited :inherit elemental-accent-fg-2-face :underline t)
     (match :inherit elemental-highlight-bg-1-face)
     (error :inherit elemental-red-face :inverse-video t)
     (warning :inherit elemental-red-face :weight bold)
     (success :inherit elemental-blue-face)
     (escape-glyph-face :inherit elemental-red-face)
     (fringe :inherit elemental-dark-fg-face)
     (linum :inherit elemental-dark-fg-face)
     (header-line :inherit elemental-bright-bg-face :inverse-video t)
     (highlight :inherit elemental-bright-bg-face)
     (hl-line :inherit elemental-bright-bg-face)
     (isearch :inherit elemental-highlight-bg-2-face)
     (isearch-fail :inherit error)
     (lazy-highlight :inherit match)
     (menu :inherit elemental-bright-bg-face)
     (minibuffer-prompt :inherit elemental-accent-fg-4-face :weight bold)
     (mode-line :inherit (elemental-bright-fg-face elemental-brighter-bg-face) :box nil)
     (mode-line-inactive :inherit elemental-bright-bg-face :box nil)
     (region :inherit default :inverse-video t)
     (secondary-selection :inherit elemental-bright-bg-face)
     (trailing-whitespace :inherit elemental-red-face :inverse-video t)
     (vertical-border :inherit default)

     ;; ----- builtins -----
     ;; comint
     (comint-highlight-prompt :inherit elemental-blue-face)

     ;; compilation
     (compilation-info :inherit elemental-green-face :weight bold)
     (compilation-warning :inherit elemental-orange-face :weight bold)

     ;; diff
     (diff-added          :inherit elemental-green-face :weight bold)
     (diff-changed        :inherit elemental-accent-fg-3-face :weight bold)
     (diff-file-header    :inherit elemental-blue-face)
     (diff-header         :inherit elemental-bright-fg-face)
     (diff-hunk-header    :inherit default)
     (diff-refine-added   :inherit diff-added :inverse-video t)
     (diff-refine-change  :inherit elemental-blue-face :weight bold)
     (diff-refine-removed :inherit diff-removed :inverse-video t)
     (diff-removed        :inherit elemental-red-face :weight bold)

     ;; smerge
     (smerge-upper :inherit default)
     (smerge-base :inherit elemental-highlight-bg-1-face)
     (smerge-lower :inherit default)

     ;; ido
     (ido-first-match :inherit elemental-green-face :weight bold)
     (ido-only-match :inherit elemental-green-face)
     (ido-subdir :inherit elemental-blue-face)

     ;; eshell
     (eshell-ls-archive :inherit elemental-accent-fg-2-face)
     (eshell-ls-backup :inherit elemental-accent-fg-3-face)
     (eshell-ls-clutter :inherit elemental-orange-face)
     (eshell-ls-directory :inherit elemental-blue-face)
     (eshell-ls-executable :inherit elemental-green-face)
     (eshell-ls-missing :inherit elemental-red-face)
     (eshell-ls-product :inherit elemental-accent-fg-3-face)
     (eshell-ls-readonly :inherit elemental-bright-fg-face)
     (eshell-ls-special :inherit elemental-accent-fg-1-face)
     (eshell-ls-symlink :inherit elemental-accent-fg-4-face)
     (eshell-ls-unreadable :inherit elemental-dark-fg-face)
     (eshell-prompt :inherit elemental-green-face :weight bold)

     ;; font-lock
     (font-lock-builtin-face :inherit elemental-green-face)
     (font-lock-color-constant-face :inherit elemental-green-face)
     (font-lock-comment-delimiter-face :inherit elemental-dark-fg-face :slant italic)
     (font-lock-comment-face :inherit elemental-dark-fg-face :slant italic)
     (font-lock-constant-face :inherit elemental-accent-fg-4-face)
     (font-lock-doc-face :inherit elemental-dark-fg-face :slant italic)
     (font-lock-doc-string-face :inherit elemental-dark-fg-face :slant italic)
     (font-lock-exit-face :inherit elemental-red-face)
     (font-lock-function-name-face :inherit elemental-blue-face)
     (font-lock-keyword-face :inherit elemental-green-face)
     (font-lock-negation-char-face :inherit elemental-red-face)
     (font-lock-other-emphasized-face :inherit elemental-accent-fg-1-face :weight bold :slant italic)
     (font-lock-other-type-face :inherit elemental-blue-face :slant italic)
     (font-lock-preprocessor-face :inherit elemental-orange-face)
     (font-lock-reference-face :inherit elemental-accent-fg-4-face)
     (font-lock-regexp-grouping-backslash :inherit elemental-red-face)
     (font-lock-regexp-grouping-construct :inherit elemental-red-face)
     (font-lock-special-keyword-face :inherit elemental-red-face)
     (font-lock-string-face :inherit elemental-accent-fg-4-face)
     (font-lock-type-face :inherit elemental-accent-fg-3-face)
     (font-lock-variable-name-face :inherit elemental-blue-face)
     (font-lock-warning-face :inherit elemental-red-face :weight bold)

     ;; info
     (info-xref :inherit link)
     (info-xref-visited :inherit link-visited)

     ;; org
     (org-agenda-dimmed-todo-face :inherit elemental-dark-fg-face)
     (org-agenda-done :inherit elemental-green-face)
     (org-agenda-restriction-lock :inherit elemental-accent-fg-4-face :inverse-video t)
     (org-agenda-structure :inherit elemental-blue-face :weight bold)
     (org-archived :inherit elemental-dark-fg-face)
     (org-block :inherit elemental-dark-fg-face)
     (org-block-background :inherit elemental-bright-bg-face)
     (org-cancelled-kwd-face :inherit elemental-green-face)
     (org-checkbox :weight bold)
     (org-clock-overlay :inherit elemental-accent-fg-4-face)
     (org-code :inherit elemental-dark-fg-face)
     (org-column :inherit elemental-accent-fg-4-face :inverse-video t)
     (org-column-title :weight bold :inverse-video t)
     (org-date :inherit elemental-accent-fg-1-face :underline t)
     (org-date-selected :inherit elemental-red-face :inverse-video t)
     (org-default :inherit default)
     (org-delegated-kwd-face :inherit elemental-accent-fg-4-face)
     (org-document-info-keyword :inherit elemental-dark-fg-face)
     (org-document-title :inherit elemental-accent-fg-4-face :weight bold)
     (org-done :inherit elemental-green-face :weight bold)
     (org-done-kwd-face :inherit elemental-green-face :weight bold)
     (org-drawer :inherit elemental-blue-face :weight bold)
     (org-ellipses :inherit elemental-accent-fg-3-face :strike-through t)
     (org-footnote :inherit elemental-accent-fg-1-face :underline t)
     (org-formula :inherit elemental-red-face :weight bold :slant italic)
     (org-headline-done :inherit elemental-dark-fg-face)
     (org-hide :inherit elemental-hidden-fg-face)
     (org-latex-and-related :inherit elemental-orange-face)
     (org-level-1 :inherit elemental-blue-face)
     (org-level-2 :inherit elemental-accent-fg-4-face)
     (org-level-3 :inherit elemental-accent-fg-3-face)
     (org-level-4 :inherit elemental-red-face)
     (org-level-5 :inherit default)
     (org-level-6 :inherit elemental-dark-fg-face)
     (org-level-7 :inherit elemental-orange-face)
     (org-level-8 :inherit elemental-accent-fg-1-face)
     (org-link :inherit elemental-accent-fg-1-face :underline t)
     (org-list-dt :weight bold)
     (org-priority :inherit elemental-dark-fg-face :slant italic)
     (org-project-kwd-face :inherit elemental-accent-fg-1-face)
     (org-scheduled :inherit elemental-green-face :weight bold :slant italic)
     (org-scheduled-previously :inherit elemental-red-face :weight bold)
     (org-scheduled-today :inherit elemental-green-face :weight bold :slant italic)
     (org-sexp-date :inherit elemental-accent-fg-1-face :underline t)
     (org-someday-kwd-face :inherit elemental-blue-face)
     (org-special-keyword :inherit elemental-dark-fg-face :slant italic)
     (org-started-kwd-face :inherit elemental-accent-fg-3-face)
     (org-table :inherit elemental-accent-fg-4-face)
     (org-tag :weight bold)
     (org-target :underline t)
     (org-time-grid :inherit elemental-accent-fg-3-face)
     (org-todo :inherit elemental-red-face :inverse-video t :weight bold)
     (org-todo-kwd-face :inherit elemental-red-face :inverse-video t :weight bold)
     (org-upcoming-deadline :inherit elemental-red-face :weight bold)
     (org-verbatim :inherit elemental-dark-fg-face :underline t)
     (org-waiting-kwd-face :inherit elemental-orange-face)
     (org-warning :inherit elemental-red-face :weight bold)

     ;; outline
     (outline-1 :inherit elemental-blue-face)
     (outline-2 :inherit elemental-accent-fg-4-face)
     (outline-3 :inherit elemental-accent-fg-3-face)
     (outline-4 :inherit elemental-red-face)
     (outline-5 :inherit default)
     (outline-6 :inherit elemental-dark-fg-face)
     (outline-7 :inherit elemental-orange-face)
     (outline-8 :inherit elemental-accent-fg-1-face)

     ;; show-paren
     (show-paren-match :inherit elemental-accent-fg-4-face :underline t :weight bold)
     (show-paren-mismatch :inherit elemental-red-face :inverse-video t :weight bold)

     ;; ----- plugins -----
     ;; ace-jump-mode
     (ace-jump-face-background :inherit elemental-dark-fg-face)
     (ace-jump-face-foreground :inherit elemental-red-face :weight bold)

     ;; cperl-mode
     (cperl-hash-face :weight unspecified :slant italic :underline t)
     (cperl-array-face :slant italic :underline t)
     (cperl-nonoverridable-face :inherit font-lock-keyword-face :weight unspecified :slant unspecified :underline nil)

     ;; flymake
     (flymake-errline :inherit elemental-red-face :weight bold)
     (flymake-warnline :inherit elemental-red-face :weight bold)

     ;; flyspell
     (flyspell-duplicate :underline (:color "yellow" :style wave))
     (flyspell-incorrect :underline (:color "red" :style wave))

     ;; highlight-stages
     (highlight-stages-negative-level-face :inherit default)
     (highlight-stages-level-1-face :inherit elemental-bright-bg-face)
     (highlight-stages-level-2-face :inherit elemental-brighter-bg-face)
     (highlight-stages-level-3-face :inherit elemental-brighter-bg-face)
     (highlight-stages-higher-level-face :inherit elemental-brighter-bg-face)

     ;; indent-guide
     (indent-guide-face :inherit elemental-darker-fg-face)

     ;; markdown-mode
     (markdown-bold-face :inherit bold)
     (markdown-header-delimiter-face :inherit shadow)
     (markdown-header-face :inherit elemental-blue-face)
     (markdown-header-face-1 :inherit elemental-blue-face)
     (markdown-header-face-2 :inherit elemental-accent-fg-4-face)
     (markdown-header-face-3 :inherit elemental-accent-fg-3-face)
     (markdown-header-face-4 :inherit elemental-red-face)
     (markdown-header-face-5 :inherit default)
     (markdown-header-face-6 :inherit elemental-dark-fg-face)
     (markdown-header-rule-face :inherit shadow)
     (markdown-italic-face :inherit italic)
     (markdown-link-face :inherit shadow)
     (markdown-link-title-face :inherit link)
     (markdown-url-face :inherit link)

     ;; rainbow-delimiters-mode
     (rainbow-delimiters-depth-1-face :inherit elemental-blue-face)
     (rainbow-delimiters-depth-2-face :inherit elemental-accent-fg-4-face)
     (rainbow-delimiters-depth-3-face :inherit elemental-accent-fg-3-face)
     (rainbow-delimiters-depth-4-face :inherit elemental-red-face)
     (rainbow-delimiters-depth-5-face :inherit default)
     (rainbow-delimiters-depth-6-face :inherit elemental-dark-fg-face)
     (rainbow-delimiters-depth-7-face :inherit elemental-orange-face)
     (rainbow-delimiters-depth-8-face :inherit elemental-accent-fg-1-face)
     (rainbow-delimiters-depth-9-face :inherit elemental-green-face)

     ;; stripe-buffer
     (stripe-highlight :inherit elemental-bright-bg-face)
     (stripe-hl-line :inherit region)

     ;; web-mode
     (web-mode-doctype-face :inherit web-mode-html-tag-bracket-face)
     (web-mode-error-face :inherit error)
     (web-mode-function-call-face :inherit default)
     (web-mode-hash-key-face :inherit web-mode-keyword-face)
     (web-mode-html-attr-name-face :inherit web-mode-keyword-face)
     (web-mode-html-tag-bracket-face :inherit elemental-blue-face)
     (web-mode-html-tag-face :inherit default)
     (web-mode-json-context-face :inherit font-lock-builtin-face)
     (web-mode-json-key-face :inherit font-lock-builtin-face)

     ;; whitespace-mode
     (whitespace-empty :inherit elemental-red-face)
     (whitespace-highlight-face :inherit elemental-blue-face :inverse-video t)
     (whitespace-hspace :inherit elemental-orange-face)
     (whitespace-indentation :inherit elemental-hidden-fg-face)
     (whitespace-line :inherit elemental-accent-fg-2-face)
     (whitespace-space :inherit elemental-darker-fg-face)
     (whitespace-space-after-tab :inherit elemental-accent-fg-4-face)
     (whitespace-space-before-tab :inherit elemental-red-face :weight bold)
     (whitespace-tab :inherit elemental-darker-fg-face)
     (whitespace-trailing :inherit elemental-red-face :weight bold)
     )))

;;;###autoload
(defun elemental-theme-apply-face (face &rest attributes)
  (declare (indent 1))
  (custom-theme-set-faces
   'elemental-theme
   `(,face ((t (:foreground unspecified :background unspecified ,@attributes))))))

(deftheme elemental-theme "An elemental theme.")
(apply 'custom-theme-set-faces 'elemental-theme elemental-faces-list)
(provide-theme 'elemental-theme)

(provide 'elemental-theme)
