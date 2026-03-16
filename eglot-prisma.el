;;; eglot-prisma.el --- Eglot integration for Prisma -*- lexical-binding: t; -*-

;; Copyright (C) 2021, by Julius de Bruijn

;; Author: Julius de Bruijn <bruijn@prisma.io>
;; Version: 0.1
;; Keywords: languages
;; Homepage: https://github.com/prisma/emacs-prisma-mode/
;; Package-Requires: ((emacs "26.1") (eglot "1.0"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Eglot integration for prisma-mode.
;;
;; Registers the Prisma language server with eglot for prisma-mode buffers.
;; Requires the npm package @prisma/language-server to be installed, providing
;; `prisma-language-server' somewhere in the path:
;;
;;   npm install -g @prisma/language-server
;;
;; To automatically start eglot in Prisma buffers, add a hook:
;;
;;   (add-hook 'prisma-mode-hook #'eglot-ensure)

;;; Code:

(require 'eglot)

(add-to-list 'eglot-server-programs
             '(prisma-mode . ("prisma-language-server" "--stdio")))

(provide 'eglot-prisma)
;;; eglot-prisma.el ends here
