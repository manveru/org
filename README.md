# Org

Org provides transformation of a selected subset of org-mode markup for wikis.

## About

If you fancy emacs' org-mode and would like to use its power for a wiki based on plain-text files you should check this out.
Org tries to stay compatible with org-mode, but does not support the full syntax. The most notable features you will find are table of contents, tables, headers, links and simple physical text formatting.
One feature org-mode doesn't provide (AFAIK) is code highlighting, since the preferred way is to simply link to the file containing the code, but that is a bit impractical in a wiki, so I added this feature.

## Features

* Headers
* Links
* Tables
* Text markup

## Dependencies

* StringScanner (ruby stdlib)
* CodeRay (optional)
* Uv (optional)

## Syntax

For a nice intro to the syntax supported by Org please check the [doc/syntax.org] file.
