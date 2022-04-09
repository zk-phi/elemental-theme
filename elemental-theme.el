;;; -*- lexical-binding: t -*-

;; ---- elemental faces

(defface elemental-bright-bg-face
  '((t (:background "#262e36")))
  "Bright BG face for elemental-theme. This face is expected to
be slightly brighter (for dark themes) than `default' but darker
than `elemental-brighter-bg-face'. Used for modest highlighting
like `hl-line', and minor UI elements including inactive
modeline."
  :group 'elemental-theme)

(defface elemental-brighter-bg-face
  '((t (:background "#343b42")))
  "Brighter BG face for elemental-theme. This face is expected to
be brighter (for dark themes) than
`elemental-bright-bg-face'. Used for most UI elements like
modeline, popups, etc. This face is always used in cooperation
with `elemental-bright-fg-face'."
  :group 'elemental-theme)

(defface elemental-bright-fg-face
  '((t (:foreground "#a5a29f")))
  "Bright FG face for elemental-theme. This face is expected to
be brighter than `default'. Used in combination with
`elemental-brighter-bg-face', to make characters easier to read."
  :group 'elemental-theme)

(defface elemental-dark-fg-face
  '((t (:foreground "#626466")))
  "Dark FG face for elemental-theme. This face is expected to be
darker than `default' but brighter than
`elemental-darker-fg-face'. Used for muted parts of buffers (like
comments, docstrings, metadata etc)."
  :group 'elemental-theme)

(defface elemental-darker-fg-face
  '((t (:foreground "#3c4146")))
  "Darker FG face for elemental-theme. This face is expected to
be darker than `elemental-dark-fg-face' and close to
background. Used to render non-content parts of buffers (like
whitespaces, indent guide lines, line numbers etc)."
  :group 'elemental-theme)

(defface elemental-accent-fg-1-face
  '((t (:foreground "#c0c0c0")))
  "Primary accent FG face for elemental-theme. Used for many
places including the region, selected items, directory names,
level-1 headings, function/variable names etc."
  :group 'elemental-theme)

(defface elemental-accent-fg-2-face
  '((t (:foreground "#c0c0c0")))
  "Secondary accent FG face for elemental-theme. Used for
built-in keywords, level-2 headings etc."
  :group 'elemental-theme)

(defface elemental-accent-fg-3-face
  '((t (:foreground "#e0b776")))
  "Terinary accent FG face for elemental-theme. Used for few
places including type names, level-3 headings etc."
  :group 'elemental-theme)

(defface elemental-accent-fg-4-face
  '((t (:foreground "#729fcf")))
  "Quaternary accent FG face for elemental-theme. This face is
not expected to be a strong color, and used for many places
including the minibuffer prompt, string literals etc."
  :group 'elemental-theme)

(defface elemental-red-fg-face
  '((t (:inherit elemental-accent-fg-4-face)))
  "An accent FG face for elemental-theme. Expected to be a
reddish color, and used for errors, deleted lines etc. You may
either give a special reddish color for this face, or derive
another accent-fg face which is considered reddish."
  :group 'elemental-theme)

(defface elemental-blue-fg-face
  '((t (:inherit elemental-accent-fg-1-face)))
  "An accent FG face for elemental-theme. Expected to be a
blueish color, and used for informations. You may either give a
special blueish color for this face, or derive another accent-fg
face which is considered blueish."
  :group 'elemental-theme)

(defface elemental-green-fg-face
  '((t (:inherit elemental-accent-fg-3-face)))
  "An accent FG face for elemental-theme. Expected to be a
greenish color, and used for successes, added lines etc. You may
either give a special greenish color for this face, or derive
another accent-fg face which is considered greenish."
  :group 'elemental-theme)

(defface elemental-orange-fg-face
  '((t (:inherit elemental-accent-fg-2-face)))
  "An accent FG face for elemental-theme. Expected to be a
orengish or yellowish color, and used for warnings etc. You may
either give a special orangish color for this face, or derive
another accent-fg face which is considered orangish."
  :group 'elemental-theme)

;; ---- trivial elemental faces

(defface elemental-inverse-video-face
  '((t (:inverse-video t)))
  "Missing `inverse-video' face for elemental-theme."
  :group 'elemental-theme)

(defface elemental-red-underline-face
  '((t (:underline (:color "red" :style wave))))
  "Red underline face for elemental-theme. Used to mark incorrect
parts of texts."
  :group 'elemental-theme)

(defface elemental-yellow-underline-face
  '((t (:underline (:color "yellow" :style wave))))
  "Yellow underline face for elemental-theme. Used to mark
inappropreate parts of texts."
  :group 'elemental-theme)

;; ---- semantic faces

(defface elemental-caution
  '((t (:inherit (elemental-red-fg-face bold))))
  "Caution face for elemental-theme. Used for cautious
parts (incluing exit statements, quoted exec, todos etc) so that
users can find them very easily."
  :group 'elemental-theme)

(defface elemental-diminished
  '((t (:inherit elemental-dark-fg-face)))
  "Diminished face for elemental-theme. Used for supplementary
resources (including comments, docstrings etc), or less important
items (including backup file names in `ls' output)."
  :group 'elemental-theme)

(defface elemental-header
  '((t (:inherit elemental-accent-fg-3-face bold)))
  "Header face for elemental-theme. Used for read-only headings
and indices (like filename part in diffs, current directory name
in dired). This face is NOT for headings in markup documents,
since they are NOT read-only."
  :group 'elemental-theme)

(defface elemental-highlight
  '((t (:inherit elemental-bright-bg-face)))
  "Basic highlight face for elemental-theme. Used for automatic,
modest, persistent highlights (including `hl-line',
`stripe-buffer' etc)."
  :group 'elemental-theme)

(defface elemental-inappropreate
  '((t (:inherit elemental-yellow-underline-face)))
  "Incorrect face for elemental-theme. Used to mark inappropreate
parts of buffers (including repeated words etc)."
  :group 'elemental-theme)

(defface elemental-incorrect
  '((t (:inherit elemental-red-underline-face)))
  "Incorrect face for elemental-theme. Used to mark incorrect
parts of buffers (including typos, syntactic erorrs etc)."
  :group 'elemental-theme)

(defface elemental-key
  '((t (:inherit italic)))
  "Key (in contrast with value) face for elemental-theme. Used to
highlight indices, keys (including json object fields, XML tag
attrs) etc."
  :group 'elemental-theme)

(defface elemental-match
  '((t (:inherit (bold underline))))
  "Match face for elemental-theme. Used to indicate that
something is matched to something else (like paired parens
etc). Unlike `elemental-match-interactive', this face can be
used for automatic highlighting."
  :group 'elemental-theme)

(defface elemental-match-interactive
  '((t (:inherit (elemental-inverse-video-face default))))
  "Interactive highlight face for elemental-theme. Used to
highlight search matches, the secondary selection etc. Unlike
`elemental-match' and `elemental-highlight', this face is NOT for
automatic highlighting but for interactive use."
  :group 'elemental-theme)

(defface elemental-reference
  '((t (:inherit underline)))
  "Reference face for elemental-theme. Used to indicate that
something refers something else (like hyperlinks, symlinks, urls,
citations etc)."
  :group 'elemental-theme)

(defface elemental-selected
  '((t (:inherit (elemental-inverse-video-face elemental-accent-fg-1-face default))))
  "Selected face for elemental-theme. Used to indicate that
something is selected by the user (like the region, selected menu
items etc). This face is NOT used to highlight more than two
items."
  :group 'elemental-theme)

(defface elemental-diff-added
  '((t (:inherit elemental-green-fg-face)))
  "Added face for elemental-theme. Used to indicate that
something is added. Mostly for diffs."
  :group 'elemental-theme)

(defface elemental-diff-changed
  '((t (:inherit elemental-orange-fg-face)))
  "Changed face for elemental-theme. Used to indicate that
something is changed. Mostly for diffs."
  :group 'elemental-theme)

(defface elemental-diff-removed
  '((t (:inherit elemental-red-fg-face)))
  "Removed face for elemental-theme. Used to indicate that
something is removed. Mostly for diffs."
  :group 'elemental-theme)

(defface elemental-diff-refine-added
  '((t (:inherit (elemental-diff-added elemental-inverse-video-face))))
  "Added (refine) face for elemental-theme. Used to highlight added
parts more accurately (than `elemental-diff-added')."
  :group 'elemental-theme)

(defface elemental-diff-refine-changed
  '((t (:inherit (elemental-diff-changed elemental-inverse-video-face))))
  "Changed (refine) face for elemental-theme. Used to highlight
changed parts more accurately (than `elemental-diff-changed')."
  :group 'elemental-theme)

(defface elemental-diff-refine-removed
  '((t (:inherit (elemental-diff-removed elemental-inverse-video-face))))
  "Changed (refine) face for elemental-theme. Used to highlight
removed parts more accurately (than `elemental-diff-removed')."
  :group 'elemental-theme)

(defface elemental-file-executable
  '((t (:inherit elemental-accent-fg-4-face)))
  "Executable file face for elemental-theme. Used to highlight
executable file names."
  :group 'elemental-theme)

(defface elemental-file-name
  '((t (:inherit elemental-accent-fg-1-face)))
  "Filename, dirname face for elemental-theme. Used to highlight
file/dir names."
  :group 'elemental-theme)

(defface elemental-file-special
  '((t (:inherit elemental-accent-fg-2-face)))
  "Special file face for elemental-theme. Used to highlight
special file names including sockets, pipes etc."
  :group 'elemental-theme)

(defface elemental-indicator-error
  '((t (:inherit (elemental-red-fg-face elemental-inverse-video-face))))
  "Error indicator face for elemental-theme. Strong face used to tell
user an error has occurred."
  :group 'elemental-theme)

(defface elemental-indicator-warning
  '((t (:inherit (elemental-orange-fg-face elemental-inverse-video-face))))
  "Warning indicator face for elemental-theme. Strong face used to tell
user a warning has reported."
  :group 'elemental-theme)

(defface elemental-indicator-info
  '((t (:inherit (elemental-blue-fg-face elemental-inverse-video-face))))
  "Information indicator face for elemental-theme. Strong face
like `elemental-indicator-warning' but not so critical."
  :group 'elemental-theme)

(defface elemental-indicator-success
  '((t (:inherit (elemental-green-fg-face elemental-inverse-video-face))))
  "Success indicator face for elemental-theme. Strong face used
to tell user something has succeeded."
  :group 'elemental-theme)

(defface elemental-level-1
  '((t (:inherit elemental-accent-fg-1-face)))
  "Level 1 face for elemental-theme. Used to highlight
first-level indices of nested structures."
  :group 'elemental-theme)

(defface elemental-level-2
  '((t (:inherit elemental-accent-fg-2-face)))
  "Level 2 face for elemental-theme. Used to highlight
first-level indices of nested structures."
  :group 'elemental-theme)

(defface elemental-level-3
  '((t (:inherit elemental-accent-fg-3-face)))
  "Level 3 face for elemental-theme. Used to highlight
first-level indices of nested structures."
  :group 'elemental-theme)

(defface elemental-level-4
  '((t (:inherit elemental-accent-fg-4-face)))
  "Level 4 face for elemental-theme. Used to highlight
first-level indices of nested structures."
  :group 'elemental-theme)

(defface elemental-stage-1
  '((t (:inherit elemental-bright-bg-face)))
  "Stage-1 face for elemental-theme. Used to highlight
first-level parts of nested structures."
  :group 'elemental-theme)

(defface elemental-stage-higher
  '((t (:inherit elemental-brighter-bg-face)))
  "Higher stage face for elemental-theme. Used to highlight
second-level parts of nested structures."
  :group 'elemental-theme)

(defface elemental-stage-negative
  '((t (:inherit default)))
  "Negative stage face for elemental-theme. Used to highlight
negative-level parts of nested structures."
  :group 'elemental-theme)

(defface elemental-markup-code
  '((t (:inherit elemental-dark-fg-face)))
  "Code face for elemental-theme. Used to highlight code parts of
markup texts."
  :group 'elemental-theme)

(defface elemental-markup-table
  '((t (:inherit elemental-accent-fg-4-face)))
  "Table face for elemental-theme. Used to highlight table parts
of markup texts."
  :group 'elemental-theme)

(defface elemental-syntax-builtin
  '((t (:inherit elemental-accent-fg-2-face)))
  "Builtin face for elemental-theme. Used to highlight keywords,
built-in unoverridable functions and other language features in
program modes."
  :group 'elemental-theme)

(defface elemental-syntax-literal
  '((t (:inherit elemental-accent-fg-4-face)))
  "Literal face for elemental-theme. Used to highlight string,
constant values in program modes."
  :group 'elemental-theme)

(defface elemental-syntax-symbol
  '((t (:inherit elemental-accent-fg-1-face)))
  "Symbol face for elemental-theme. Used to highlight
function/variable names in program modes."
  :group 'elemental-theme)

(defface elemental-syntax-type
  '((t (:inherit elemental-accent-fg-3-face)))
  "Type face for elemental-theme. Used to highlight type/class
names in program modes."
  :group 'elemental-theme)

(defface elemental-ui-component
  '((t (:inherit (elemental-bright-fg-face elemental-brighter-bg-face))))
  "Component face for elemental-theme. Used to render UI
components (like the active mode-line, popups)."
  :group 'elemental-theme)

(defface elemental-ui-component-diminished
  '((t (:inherit (elemental-dark-fg-face elemental-ui-component))))
  "Diminished face for UI components. Like `elemental-diminished'
but for UI components."
  :group 'elemental-theme)

(defface elemental-ui-component-transparent
  '((t (:inherit (elemental-bright-bg-face elemental-ui-component))))
  "Transparent face for UI components. Used to render less
important elements in UI components (like scroll-bars, inactive
mode-lines)."
  :group 'elemental-theme)

(defface elemental-ui-ghost
  '((t (:inherit elemental-darker-fg-face)))
  "Ghost face for elemental-theme. Used to render non-content
things (like line-numbers) in very dark, non-distracting color."
  :group 'elemental-theme)

(defface elemental-ui-prompt
  '((t (:inherit (elemental-accent-fg-4-face bold))))
  "Prompt face for elemental-theme. Used to render prompt
messages. Mostly for minibuffers."
  :group 'elemental-theme)

(defconst elemental-faces-list
  (mapcar
   (lambda (x)
     `(,(car x)
       ((t
         (:foreground unspecified :background unspecified :box unspecified
                      :underline unspecified :weight unspecified :slant unspecified ,@(cdr x))))))
   '(;; ----- special faces -----
     (default :background "#192129" :foreground "#7d7d7d")
     (cursor :background "#7d7d7d")

     ;; ----- basic -----
     (shadow :inherit elemental-diminished)
     (link :inherit elemental-reference)
     (link-visited :inherit elemental-reference)
     (match :inherit elemental-match-interactive)
     (error :inherit elemental-indicator-error)
     (warning :inherit elemental-indicator-warning)
     (success :inherit elemental-indicator-success)
     (escape-glyph :inherit elemental-caution)
     (fringe :inherit elemental-ui-ghost)
     (line-number :inherit elemental-ui-ghost)
     (header-line :inherit elemental-ui-component)
     (highlight :inherit elemental-highlight)
     (menu :inherit elemental-ui-component)
     (minibuffer-prompt :inherit elemental-ui-prompt)
     (mode-line :inherit elemental-ui-component)
     (mode-line-inactive :inherit elemental-ui-component-transparent)
     (region :inherit elemental-selected)
     (secondary-selection :inherit elemental-match-interactive)
     (trailing-whitespace :inherit elemental-inappropreate)
     (window-divider :inherit elemental-ui-ghost)
     (window-divider-first-pixel :inherit elemental-ui-ghost)
     (window-divider-last-pixel :inherit elemental-ui-ghost)
     (vertical-border :inherit default)

     ;; ----- builtins -----
     ;; comint
     (comint-highlight-prompt :inherit default)

     ;; compilation
     (compilation-info :inherit elemental-indicator-info)
     (compilation-warning :inherit elemental-indicator-warning)

     ;; diff
     (diff-changed :inherit elemental-diff-changed)
     (diff-file-header :inherit elemental-diminished)
     (diff-header :inherit elemental-diminished)
     (diff-hunk-header :inherit elemental-header)
     (diff-indicator-added :inherit elemental-diff-added)
     (diff-indicator-changed :inherit elemental-diff-changed)
     (diff-indicator-removed :inherit elemental-diff-removed)
     (diff-refine-added :inherit elemental-diff-refine-added)
     (diff-refine-changed :inherit elemental-diff-refine-changed)
     (diff-refine-removed :inherit elemental-diff-refine-removed)
     (diff-removed :inherit elemental-diff-removed)
     (diff-added :inherit elemental-diff-added)

     ;; dired
     (dired-directory :inherit elemental-file-name)
     (dired-header :inherit elemental-header)
     (dired-ignored :inherit elemental-diminished)
     (dired-special :inherit elemental-file-special)
     (dired-symlink :inherit elemental-reference)
     (dired-marked :inherit elemental-diff-changed)

     ;; ediff
     (ediff-current-diff-A :inherit elemental-diff-removed)
     (ediff-current-diff-B :inherit elemental-diff-added)
     (ediff-fine-diff-A :inherit elemental-diff-refine-removed)
     (ediff-fine-diff-B :inherit elemental-diff-refine-added)

     ;; eldoc
     (eldoc-highlight-function-argument :inherit elemental-match)

     ;; eshell
     (eshell-ls-archive :inherit default)
     (eshell-ls-backup :inherit elemental-diminished)
     (eshell-ls-clutter :inherit default)
     (eshell-ls-directory :inherit elemental-file-name)
     (eshell-ls-executable :inherit elemental-file-executable)
     (eshell-ls-missing :inherit elemental-indicator-error)
     (eshell-ls-product :inherit elemental-diminished)
     (eshell-ls-readonly :inherit default)
     (eshell-ls-special :inherit elemental-file-special)
     (eshell-ls-symlink :inherit elemental-reference)
     (eshell-ls-unreadable :inherit elemental-indicator-warning)
     (eshell-prompt :inherit default)

     ;; font-lock
     (font-lock-builtin-face :inherit elemental-syntax-builtin)
     (font-lock-comment-delimiter-face :inherit elemental-diminished)
     (font-lock-comment-face :inherit elemental-diminished)
     (font-lock-constant-face :inherit elemental-syntax-literal)
     (font-lock-doc-face :inherit elemental-diminished)
     (font-lock-doc-string-face :inherit elemental-diminished)
     (font-lock-exit-face :inherit elemental-caution)
     (font-lock-function-name-face :inherit elemental-syntax-symbol)
     (font-lock-keyword-face :inherit elemental-syntax-builtin)
     (font-lock-negation-char-face :inherit elemental-caution)
     (font-lock-preprocessor-face :inherit elemental-syntax-builtin)
     (font-lock-regexp-grouping-backslash :inherit elemental-caution)
     (font-lock-regexp-grouping-construct :inherit elemental-caution)
     (font-lock-string-face :inherit elemental-syntax-literal)
     (font-lock-type-face :inherit elemental-syntax-type)
     (font-lock-variable-name-face :inherit elemental-syntax-symbol)
     (font-lock-warning-face :inherit elemental-caution)

     ;; hl-line
     (hl-line :inherit elemental-highlight)

     ;; ido
     (ido-first-match :inherit elemental-selected)
     (ido-only-match :inherit elemental-selected)
     (ido-subdir :inherit elemental-file-name)

     ;; info
     (info-xref :inherit elemental-reference)
     (info-xref-visited :inherit elemental-reference)

     ;; isearch
     (isearch :inherit elemental-selected)
     (isearch-fail :inherit elemental-indicator-error)
     (lazy-highlight :inherit elemental-match-interactive)

     ;; org
     (org-block :inherit elemental-markup-code)
     (org-checkbox :inherit default)
     (org-code :inherit elemental-markup-code)
     (org-date :inherit elemental-reference)
     (org-default :inherit default)
     (org-document-info-keyword :inherit elemental-diminished)
     (org-document-title :inherit elemental-diminished)
     (org-done :inherit elemental-indicator-success)
     (org-footnote :inherit elemental-reference)
     (org-level-1 :inherit elemental-level-1)
     (org-level-2 :inherit elemental-level-2)
     (org-level-3 :inherit elemental-level-3)
     (org-level-4 :inherit elemental-level-4)
     (org-level-5 :inherit elemental-level-1)
     (org-level-6 :inherit elemental-level-2)
     (org-level-7 :inherit elemental-level-3)
     (org-level-8 :inherit elemental-level-4)
     (org-link :inherit elemental-reference)
     (org-list-dt :inherit elemental-key)
     (org-meta-line :inherit elemental-diminished)
     (org-sexp-date :inherit elemental-reference)
     (org-special-keyword :inherit elemental-indicator-info)
     (org-table :inherit elemental-markup-table)
     (org-target :inherit elemental-reference)
     (org-todo :inherit elemental-caution)
     (org-verbatim :inherit elemental-markup-code)
     (org-warning :inherit elemental-caution)

     ;; outline
     (outline-1 :inherit elemental-level-1)
     (outline-2 :inherit elemental-level-2)
     (outline-3 :inherit elemental-level-3)
     (outline-4 :inherit elemental-level-4)
     (outline-5 :inherit elemental-level-1)
     (outline-6 :inherit elemental-level-2)
     (outline-7 :inherit elemental-level-3)
     (outline-8 :inherit elemental-level-4)

     ;; sh-script
     (sh-heredoc :inherit elemental-syntax-literal)
     (sh-quoted-exec :inherit elemental-caution)

     ;; show-paren
     (show-paren-match :inherit elemental-match)
     (show-paren-mismatch :inherit elemental-indicator-error)

     ;; ----- plugins -----
     ;; company-mode
     (company-tooltip :inherit elemental-ui-component)
     (company-tooltip-common :inherit elemental-match)
     (company-tooltip-annotation :inherit elemental-ui-component-diminished)
     (company-tooltip-annotation-selection :inherit elemental-selected)
     (company-tooltip-selection :inherit elemental-selected)
     (company-tooltip-mouse :inherit elemental-selected)
     (company-tooltip-search :inherit elemental-match-interactive)
     (company-tooltip-search-selection :inherit elemental-match-interactive)
     (company-preview :inherit elemental-ui-component)
     (company-preview-common :inherit elemental-match)
     (company-preview-search :inherit elemental-match-interactive)
     (company-scrollbar-fg :inherit elemental-selected)
     (company-scrollbar-bg :inherit elemental-ui-component-transparent)

     ;; corfu
     (corfu-default :inherit elemental-ui-component)
     (corfu-current :inherit elemental-selected)
     (corfu-bar :inherit elemental-inverse-video-face)

     ;; cperl-mode
     (cperl-hash-face :inherit elemental-syntax-symbol)
     (cperl-array-face :inherit elemental-syntax-symbol)
     (cperl-nonoverridable-face :inherit elemental-syntax-builtin)

     ;; flymake
     (flymake-errline :inherit elemental-incorrect)
     (flymake-warnline :inherit elemental-inappropreate)

     ;; flyspell
     (flyspell-duplicate :inherit elemental-inappropreate)
     (flyspell-incorrect :inherit elemental-incorrect)

     ;; highlight-stages
     (highlight-stages-negative-level-face :inherit default)
     (highlight-stages-level-1-face :inherit elemental-stage-1)
     (highlight-stages-level-2-face :inherit elemental-stage-higher)
     (highlight-stages-level-3-face :inherit elemental-stage-higher)
     (highlight-stages-higher-level-face :inherit elemental-stage-higher)

     ;; indent-guide
     (indent-guide-face :inherit elemental-ui-ghost)

     ;; ivy
     (ivy-confirm-face :inherit elemental-caution)
     (ivy-grep-info :inherit default)
     (ivy-grep-line-number :inherit elemental-ui-ghost)
     (ivy-match-required-fg-face :inherit elemental-caution)
     (ivy-minibuffer-match-face-1 :inherit elemental-match-interactive)
     (ivy-minibuffer-match-face-2 :inherit elemental-match-interactive)
     (ivy-minibuffer-match-face-3 :inherit elemental-match-interactive)
     (ivy-minibuffer-match-face-4 :inherit elemental-match-interactive)
     (ivy-minibuffer-match-highlight :inherit elemental-match-interactive)
     (ivy-prompt-match :inherit default)
     (ivy-remote :inherit elemental-file-special)
     (ivy-separator :inherit elemental-ui-ghost)
     (ivy-current-match :inherit elemental-selected)

     ;; markdown-mode
     (markdown-code-face :inherit elemental-markup-code)
     (markdown-footnote-marker-face :inherit elemental-reference)
     (markdown-gfm-checkbox-face :inherit default)
     (markdown-header-face-1 :inherit elemental-level-1)
     (markdown-header-face-2 :inherit elemental-level-2)
     (markdown-header-face-3 :inherit elemental-level-3)
     (markdown-header-face-4 :inherit elemental-level-4)
     (markdown-header-face-5 :inherit elemental-level-1)
     (markdown-header-face-6 :inherit elemental-level-2)
     (markdown-header-rule-face :inherit elemental-diminished)
     (markdown-highlight-face :inherit elemental-selected)
     (markdown-html-attr-name-face :inherit elemental-key)
     (markdown-html-entity-face :inherit default)
     (markdown-html-tag-delimiter-face :inherit default)
     (markdown-html-tag-name-face :inherit elemental-syntax-builtin)
     (markdown-inline-code-face :inherit elemental-markup-code)
     (markdown-language-keyword-face :inherit elemental-syntax-type)
     (markdown-link-face :inherit elemental-reference)
     (markdown-link-title-face :inherit elemental-reference)
     (markdown-markup-face :inherit elemental-diminished)
     (markdown-metadata-key-face :inherit elemental-diminished)
     (markdown-metadata-value-face :inherit elemental-diminished)
     (markdown-missing-link-face :inherit elemental-indicator-error)
     (markdown-pre-face :inherit elemental-markup-code)
     (markdown-reference-face :inherit elemental-reference)
     (markdown-table-face :inherit elemental-markup-table)
     (markdown-url-face :inherit elemental-reference)
     (markdown-header-delimiter-face :inherit elemental-diminished)

     ;; popup
     (popup-face :inherit elemental-ui-component)
     (popup-tip-face :inherit elemental-ui-component)
     (popup-summary-face :inherit elemental-ui-component-diminished)
     (popup-scroll-bar-foreground-face :inherit elemental-selected)
     (popup-scroll-bar-background-face :inherit elemental-ui-component-transparent)
     (popup-isearch-match :inherit elemental-match-interactive)
     (popup-menu-mouse-face :inherit elemental-selected)
     (popup-menu-selection-face :inherit elemental-selected)

     ;; rainbow-delimiters-mode
     (rainbow-delimiters-depth-1-face :inherit elemental-level-1)
     (rainbow-delimiters-depth-2-face :inherit elemental-level-2)
     (rainbow-delimiters-depth-3-face :inherit elemental-level-3)
     (rainbow-delimiters-depth-4-face :inherit elemental-level-4)

     ;; stripe-buffer
     (stripe-highlight :inherit elemental-highlight)
     (stripe-hl-line :inherit elemental-selected)

     ;; web-mode
     (web-mode-css-property-name-face :inherit elemental-key)
     (web-mode-doctype-face :inherit elemental-syntax-builtin)
     (web-mode-error-face :inherit elemental-incorrect)
     (web-mode-function-call-face :inherit default)
     (web-mode-hash-key-face :inherit elemental-key)
     (web-mode-html-attr-name-face :inherit elemental-key)
     (web-mode-html-tag-bracket-face :inherit default)
     (web-mode-html-tag-face :inherit elemental-syntax-builtin)
     (web-mode-json-context-face :inherit elemental-syntax-builtin)
     (web-mode-json-key-face :inherit elemental-key)

     ;; whitespace-mode
     (whitespace-empty :inherit elemental-inappropreate)
     (whitespace-hspace :inherit elemental-ui-ghost)
     (whitespace-indentation :inherit elemental-ui-ghost)
     (whitespace-line :inherit elemental-inappropreate)
     (whitespace-space :inherit elemental-ui-ghost)
     (whitespace-space-after-tab :inherit elemental-inappropreate)
     (whitespace-space-before-tab :inherit elemental-inappropreate)
     (whitespace-tab :inherit elemental-ui-ghost)
     (whitespace-trailing :inherit elemental-inappropreate)
     (whitespace-newline :inherit elemental-ui-ghost)
     )))

(deftheme elemental-theme "An elemental theme.")
(apply 'custom-theme-set-faces 'elemental-theme elemental-faces-list)
(provide-theme 'elemental-theme)

(custom-theme-set-variables
 'elemental-theme
 '(window-divider-default-right-width 2)
 '(window-divider-default-places 'right-only))

(eval-after-load "rainbow-delimiters"
  (custom-theme-set-variables 'elemental-theme '(rainbow-delimiters-max-face-count 4)))

(provide 'elemental-theme)
