# pyqanava

PySide6 binding of [QuickQanava](https://github.com/cneben/QuickQanava)

:warning: This is a work in progress / open to contributions port.

## Licence

GPLv3.

- `utils/pyside_config.py` is (C) 2019 The Qt Company Ltd and distributed under BSD licence [source](https://code.qt.io/cgit/pyside/pyside-setup.git/tree/examples/utils/pyside_config.py).
- Some configuration has been extracted from [KDDockWidgets](https://github.com/KDAB/KDDockWidgets) (C) 2018-2021 Klaralvdalens Datakonsult AB.

## Installing

Build configuration targets Ubuntu 20.04 (Target: Github actions CI).

**Requirements:**
- Qt must be installed in `$HOME/Qt/` (Ex: `$HOME/Qt/6.1.0/`).
- Only tested with Qt 6.1.0 and Python 3.8.5 (standard Ubuntu Python installation) on x64.
- `shiboken6 --version` == `shiboken v6.0.3`.
- `clang --version` == `clang version 10.0.0-4ubuntu1`.
- `cmake --version` == `cmake version 3.16.3`.

Ubuntu dependencies:
```
$ sudo apt install libicu-dev
$ sudo apt install cmake
$ sudo apt install ninja
$ sudo apt install llvm
$ sudo apt install clang
$ python3 -m pip install pyside2
$ python3 -m pip install --index-url=http://download.qt.io/official_releases/QtForPython/ --trusted-host download.qt.io shiboken2_generator
```

```
$ git clone https://github.com/cneben/pyqanava.git
$ git submodule update --init --recursive
```

Then, run `hard_build.sh` in root directory.

## TODO

- [ ] Automate Qt libclang build installation with wget.
- [ ] Remove all hardcoded paths from CMakeLists.txt.
- [ ] Add a complete python test application (using module in `build`).
- [ ] Find a way to keep a static build option.
- [ ] Configure installation with CMake.
- [ ] Configure packaging with CMake.
- [ ] Port to win64 and macos.


## References:

- https://resources.qt.io/videos/python-and-c-interoperability-with-shiboken-on-demand-webinar-2
- https://www.kdab.com/creating-python-bindings-for-qt-libraries/
- https://code.qt.io/cgit/pyside/pyside-setup.git/tree/examples/samplebinding/
- Issues and questions: https://bugreports.qt.io/projects/PYSIDE/issues/PYSIDE-1526?filter=allopenissues
- Example: https://github.com/KDAB/KDDockWidgets/tree/master/python
