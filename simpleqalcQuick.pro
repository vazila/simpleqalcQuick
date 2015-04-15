TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp \
    qtqalcobject.cpp

RESOURCES += qml.qrc
CONFIG += link_pkgconfig
PKGCONFIG += libqalculate
# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    qtqalcobject.h
