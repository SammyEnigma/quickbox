#!/bin/bash

PROJ_LC=cs_CZ
PROJ_NAME=quickbox
FANDA_HOME=/home/fanda

PROJ_HOME=$FANDA_HOME/proj/${PROJ_NAME}
QT_HOME=$FANDA_HOME/programs/qt5/5.13.2/gcc_64/bin
TS_HOME=$FANDA_HOME/t/${PROJ_NAME}-ts
PROJ_BUILD=$FANDA_HOME/t/_distro/_build
QM_DEST_DIR=$PROJ_BUILD/bin/translations
LCTOOL_HOME=$PROJ_HOME/devutils/lctools
