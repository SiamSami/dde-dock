#-------------------------------------------------
#
# Project created by QtCreator 2015-06-20T10:09:57
#
#-------------------------------------------------

QT       += core gui x11extras dbus svg

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = dde-dock
TEMPLATE = app
INCLUDEPATH += ./src ./libs

DEFINES += PLUGIN_API_VERSION=1.0

SOURCES += \
    src/main.cpp \
    src/mainwidget.cpp \
    src/abstractdockitem.cpp \
    src/Widgets/appbackground.cpp \
    src/Widgets/appicon.cpp \
    src/Widgets/docklayout.cpp \
    src/Widgets/screenmask.cpp \
    src/Widgets/windowpreview.cpp \
    src/Panel/panel.cpp \
    src/Widgets/appitem.cpp \
    src/Panel/panelmenu.cpp \
    src/Controller/dockmodedata.cpp \
    src/Controller/appmanager.cpp \
    src/DBus/dbusentrymanager.cpp \
    src/DBus/dbusentryproxyer.cpp \
    src/DBus/dbuspanelmanager.cpp \
    src/DBus/dbusclientmanager.cpp \
    src/DBus/dbusdockedappmanager.cpp \
    src/DBus/dbusdocksetting.cpp \
    src/pluginitemwrapper.cpp \
    src/Widgets/arrowrectangle.cpp \
    src/dockpluginproxy.cpp \
    src/dockpluginmanager.cpp\
    src/DBus/dbusmenumanager.cpp \
    src/DBus/dbusmenu.cpp \
    src/Widgets/apppreviews.cpp \
    src/Widgets/closebutton.cpp \
    src/DBus/dbushidestatemanager.cpp \
    libs/xcb_misc.cpp \
    src/Widgets/launcheritem.cpp \
    src/Widgets/reflectioneffect.cpp \
    src/Widgets/highlighteffect.cpp \
    src/Widgets/previewarrowrectangle.cpp

HEADERS  += \
    src/abstractdockitem.h \
    src/dockplugininterface.h \
    src/mainwidget.h \
    src/Widgets/appbackground.h \
    src/Widgets/appicon.h \
    src/Widgets/docklayout.h \
    src/Widgets/screenmask.h \
    src/Widgets/windowpreview.h \
    src/Panel/panel.h \
    src/Widgets/appitem.h \
    src/Panel/panelmenu.h \
    src/Controller/dockmodedata.h \
    src/Controller/appmanager.h \
    src/DBus/dbusentrymanager.h \
    src/DBus/dbusentryproxyer.h \
    src/DBus/dbuspanelmanager.h \
    src/DBus/dbusclientmanager.h \
    src/DBus/dbusdockedappmanager.h \
    src/DBus/dbusdocksetting.h \
    src/pluginitemwrapper.h \
    src/Widgets/arrowrectangle.h\
    src/dockpluginproxyinterface.h \
    src/dockpluginproxy.h \
    src/DBus/dbusmenumanager.h \
    src/DBus/dbusmenu.h \
    src/dockpluginmanager.h \
    src/dockconstants.h \
    src/Widgets/apppreviews.h \
    src/Widgets/closebutton.h \
    src/DBus/dbushidestatemanager.h \
    libs/xcb_misc.h \
    src/Widgets/launcheritem.h \
    src/Widgets/reflectioneffect.h \
    src/Widgets/highlighteffect.h \
    src/Widgets/previewarrowrectangle.h

RESOURCES += \
    images.qrc \
    qss.qrc

PKGCONFIG += gtk+-2.0 x11 cairo xcb xcb-ewmh xcb-damage
CONFIG += c++11 link_pkgconfig

target.path = /usr/bin/

headers.files += src/dockconstants.h \
    src/dockplugininterface.h \
    src/dockpluginproxyinterface.h
headers.path = /usr/include/dde-dock

INSTALLS += headers target
