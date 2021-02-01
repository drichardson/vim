# Build and Install

1. Download and extract a pre-built portable (non-MSI) zip from
   https://github.com/vim/vim-win32-installer/releases to ~/Desktop/vim/vim82.

2. Run:

    vcvars64.cmd
    .\DougBuildAll.cmd clean
    .\DougInstall.cmd


# Changing Build Parameters

To make changes, you need to change Make_mvc.make for Windows and Makefile for
Linux.
