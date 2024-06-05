---
title: Minimal python setup
description: Minimal python setup.
date: 2023-05-12
slug: minimalpythonsetup
tags:
  - python
---

Here's how I manage my day-to-day Python workflow recently.

## asdf
I rely on [asdf](https://asdf-vm.com/) for handling multiple Python versions. I
favor asdf over [pyenv](https://github.com/pyenv/pyenv) because of its
versatility in managing various runtimes, such as Node.js and Ruby, in addition
to Python.


## venv
Each project operates within its own virtual environment:

- I use the builtin `venv` module to create a virtual environment: `python -m
  venv .venv`.
- Ensure the latest pip version within the virtual env:
  `python -m pip install --upgrade pip`.
- All commands are explicitly executed with `python -m` (e.g., `pytest`,
    `black`, `flake8`, etc ).

## pip
I use `pip` and a `requirements.txt` file to manage dependencies. I prefer
keeping my global package list clean by ensuring that a virtual environment is
active before installing any packages (`pip config set global.require-virtualenv
true`). This helps prevent accidentally installing a package globally.

## pipx
For installing global python tools like `ruff` and `poetry`, I use
[pipx](https://github.com/pypa/pipx). It adds extra flexibility, allowing me to
install different versions of tools for different Python versions.

For example, executing

- `$ pipx install poetry==1.7 --python python3.11 --suffix 17_310`
- `$ pipx install poetry==1.5 --python python3.9 --suffix 15_39`

Will result in both `poetry15_39` (Poetry 1.5 installed for Python 3.9) and
`poetry17_310` (Poetry 1.7 installed for Python 3.11) being added to your
`PATH`.


## unittest
For testing I rely on `unittest` builtin module.


## flat layout
I adopt the [flat
layout](https://packaging.python.org/en/latest/discussions/src-layout-vs-flat-layout/).

```text
├── mymodule
│   └── mymodule
│       ├── __init__.py
│       └── __main__.py

```
