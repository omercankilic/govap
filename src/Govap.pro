QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    frameprocessor.cpp \
    graphicsdraw.cpp \
    helper_functions.cpp \
    main.cpp \
    mainwindow.cpp \
    scribblearea.cpp \
    scribblewindow.cpp \
    videocontrol.cpp

HEADERS += \
    ffmpeg_headers.h \
    frameprocessor.h \
    graphicsdraw.h \
    helper_functions.h \
    mainwindow.h \
    scribblearea.h \
    scribblewindow.h \
    videocontrol.h

FORMS += \
    mainwindow.ui \
    scribblewindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


DISTFILES += \
      IconsAndPhotos/fileIcon.png \
      IconsAndPhotos/helpIcon.png \
      fileIcon.png \
      icons/Arrow-left.png \
      icons/Arrow-right.png \
      icons/go_back.png \
      icons/go_forward.png \
      joker.jpg



INCLUDEPATH  += /usr/include/opencv4

LIBS +=-L/usr/local/lib -lavdevice -lm -lxcb -lxcb-shm -lxcb -lxcb  -lxcb-render  -lxcb  -lavfilter -pthread -lm  -ldl -lswscale -lm -lavformat -lz -lavcodec -pthread -lm -llzma -lz  -ldl -lswresample -lm -lavutil -pthread  -lX11 -lm -ldl

LIBS += -lopencv_core -lopencv_highgui -lopencv_imgproc -lopencv_objdetect -lopencv_imgcodecs -lopencv_videoio

RESOURCES += \
      resources.qrc
