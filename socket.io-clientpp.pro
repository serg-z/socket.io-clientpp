QT       -= core gui

CONFIG += c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = socket.io-clientpp
TEMPLATE = lib
CONFIG += staticlib

include(../common.pri)

win32 {
    DEFINES += WIN32
}

INCLUDEPATH += \
    $$BOOST_DIR \
    lib/rapidjson/include \
    lib/websocketpp/src

HEADERS += \
    src/socket_io_client.hpp

SOURCES += \
    src/socket_io_client.cpp \
    lib/websocketpp/src/uri.cpp \
    lib/websocketpp/src/sha1/sha1.cpp \
    lib/websocketpp/src/rng/boost_rng.cpp \
    lib/websocketpp/src/rng/blank_rng.cpp \
    lib/websocketpp/src/processors/hybi_util.cpp \
    lib/websocketpp/src/processors/hybi_header.cpp \
    lib/websocketpp/src/network_utilities.cpp \
    lib/websocketpp/src/messages/data.cpp \
    lib/websocketpp/src/base64/base64.cpp
