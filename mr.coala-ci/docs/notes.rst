=====
Notes
=====

markdownbear
============
- install -g remark-lint
- npm install -g remark-cli

Checking all *.rst files in dir *docs*, including all files in subdirs of *docs*

.. code-block:: bash

    [rst]
    bears = reSTLintBear
    15 files = docs/**/*.rst

    
Calling it

.. code-block:: bash
    
    coala-ci rst

Basic checks for documetation
=============================

Config file *.coafile*:

.. code-block:: bash

[Markdown]
bears = MarkdownBear
files = README.md, CHANGES.md

[Shell]
bears = ShellCheckBear
files = **/*.bash, **/*.sh

[Makefile]
bears = LineLengthBear
files = Makefile

[rst]
bears = reSTLintBear, SpaceConsistencyBear, LineLengthBear
files = docs/**/*.rst
use_spaces = True

[prose]
bears = ProseLintBear
files = docs/**/*.rst

[link]
bears = InvalidLinkBear
files = docs/**/*.rst

[doc-check]
bears = reSTLintBear, SpaceConsistencyBear, LineLengthBear, KeywordBear, InvalidLinkBear, ProseLintBear, WriteGoodLintBear, AlexBear
files = docs/**/*.rst
use_spaces = True
ci_keywords, cs_keywords = GitHub

[wg]
bears = WriteGoodLintBear
files = docs/**/*.rst

[alex]
bears = AlexBear
files = docs/**/*.rst