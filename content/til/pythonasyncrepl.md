---
title: Using async/await in the python REPL
description: Run jupyter in docker
date: 2024-12-29
slug: pythonasyncrepl
tags:
  - python
  - python3.8
  - asyncio
---

Starting from [python3.8](https://docs.python.org/3/whatsnew/3.8.html#asyncio),
we can use the command `python -m asyncio` to start a Python REPL that natively
supports awaiting asyncio coroutines. This eliminates the need to explicitly run
them using `asyncio.run()`.
