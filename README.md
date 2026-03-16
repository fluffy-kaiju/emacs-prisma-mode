# emacs-prisma-mode

A quick and dirty emacs major mode for Prisma schemas.

P.S. I have quite limited time for this, so I'd be happy for good pull requests if needing features!

## Yes :)

- Syntax hilighting
- Autoindent
- LSP (via [lsp-mode](https://github.com/emacs-lsp/lsp-mode) or [eglot](https://github.com/joaotavora/eglot))

## Installation

I'm using [doom-emacs](https://github.com/hlissner/doom-emacs), so to have the mode available I clone the repo to `~/.doom.d/emacs-prisma-mode`, then in `~/.doom.d/config.el` I can set:

```elisp
(load! "emacs-prisma-mode/prisma-mode")
```

Or, you can also install as package at `~/.doom.d/packages.el`

```elisp
(package! prisma-mode :recipe (:host github :repo "pimeys/emacs-prisma-mode" :branch "main"))
```

The LSP features require the Prisma language server to be installed:

```
npm install -g @prisma/language-server
```

### LSP with lsp-mode

Install [lsp-mode](https://github.com/emacs-lsp/lsp-mode):

```elisp
(package! lsp-mode)
```

Enable it automatically for Prisma files:

```elisp
(add-hook 'prisma-mode-hook #'lsp-deferred)
```

### LSP with eglot

[eglot](https://github.com/joaotavora/eglot) is built into Emacs 29+. For older versions, install it:

```elisp
(package! eglot)
```

Enable it automatically for Prisma files:

```elisp
(add-hook 'prisma-mode-hook #'eglot-ensure)
```

## Screenshot

![All its glory](https://raw.githubusercontent.com/pimeys/emacs-prisma-mode/main/emacs-major-mode.png)
