#-------------------------------------------------
#
# Project created by QtCreator 2016-11-15T17:50:51
#
#-------------------------------------------------

QT       -= core gui

TARGET = Log4cpp
TEMPLATE = lib

DEFINES += LOG4CPP_LIBRARY
CONFIG += plugin

QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.8

CONFIG(debug, debug|release) {
    QMAKE_POST_LINK += /usr/bin/install_name_tool -id  \"@rpath/libLog4cpp.dylib\" libLog4cpp.dylib
}

CONFIG(release, debug|release) {
    QMAKE_LFLAGS_RPATH =
    QMAKE_LFLAGS += "-Wl,-rpath,\'@loader_path/../../../\'"
    QMAKE_POST_LINK += /usr/bin/install_name_tool -id  \"@executable_path/../../../Plug-ins.localized/Sgk/Frameworks/libLog4cpp.dylib\" libLog4cpp.dylib
}

SOURCES += \
    LayoutAppender.cpp \
    LayoutsFactory.cpp \
    LevelEvaluator.cpp \
    Localtime.cpp \
    LoggingEvent.cpp \
    Manipulator.cpp \
    MSThreads.cpp \
    NDC.cpp \
    NTEventLogAppender.cpp \
    OmniThreads.cpp \
    OstreamAppender.cpp \
    PassThroughLayout.cpp \
    PatternLayout.cpp \
    PortabilityImpl.cpp \
    Priority.cpp \
    Properties.cpp \
    PropertyConfigurator.cpp \
    PropertyConfiguratorImpl.cpp \
    PThreads.cpp \
    RemoteSyslogAppender.cpp \
    RollingFileAppender.cpp \
    SimpleConfigurator.cpp \
    SimpleLayout.cpp \
    SmtpAppender.cpp \
    StringQueueAppender.cpp \
    StringUtil.cpp \
    SyslogAppender.cpp \
    TimeStamp.cpp \
    TriggeringEventEvaluatorFactory.cpp \
    Win32DebugAppender.cpp \
    snprintf.c \
    AbortAppender.cpp \
    Appender.cpp \
    AppendersFactory.cpp \
    AppenderSkeleton.cpp \
    BasicConfigurator.cpp \
    BasicLayout.cpp \
    BufferingAppender.cpp \
    Category.cpp \
    CategoryStream.cpp \
    Configurator.cpp \
    DailyRollingFileAppender.cpp \
    DllMain.cpp \
    DummyThreads.cpp \
    FactoryParams.cpp \
    FileAppender.cpp \
    Filter.cpp \
    FixedContextCategory.cpp \
    HierarchyMaintainer.cpp \
    IdsaAppender.cpp

HEADERS += \
    Localtime.hh \
    PortabilityImpl.hh \
    Properties.hh \
    PropertyConfiguratorImpl.hh \
    StringUtil.hh \
    log4cpp/threading/BoostThreads.hh \
    log4cpp/threading/DummyThreads.hh \
    log4cpp/threading/MSThreads.hh \
    log4cpp/threading/OmniThreads.hh \
    log4cpp/threading/PThreads.hh \
    log4cpp/threading/Threading.hh \
    log4cpp/AbortAppender.hh \
    log4cpp/Appender.hh \
    log4cpp/AppendersFactory.hh \
    log4cpp/AppenderSkeleton.hh \
    log4cpp/BasicConfigurator.hh \
    log4cpp/BasicLayout.hh \
    log4cpp/BufferingAppender.hh \
    log4cpp/Category.hh \
    log4cpp/CategoryStream.hh \
    log4cpp/config-MinGW32.h \
    log4cpp/config-openvms.h \
    log4cpp/config-win32-stlport-boost.h \
    log4cpp/config-win32.h \
    log4cpp/config.h \
    log4cpp/Configurator.hh \
    log4cpp/convenience.h \
    log4cpp/DailyRollingFileAppender.hh \
    log4cpp/Export.hh \
    log4cpp/FactoryParams.hh \
    log4cpp/FileAppender.hh \
    log4cpp/Filter.hh \
    log4cpp/FixedContextCategory.hh \
    log4cpp/HierarchyMaintainer.hh \
    log4cpp/IdsaAppender.hh \
    log4cpp/Layout.hh \
    log4cpp/LayoutAppender.hh \
    log4cpp/LayoutsFactory.hh \
    log4cpp/LevelEvaluator.hh \
    log4cpp/LoggingEvent.hh \
    log4cpp/Manipulator.hh \
    log4cpp/NDC.hh \
    log4cpp/NTEventLogAppender.hh \
    log4cpp/OstreamAppender.hh \
    log4cpp/PassThroughLayout.hh \
    log4cpp/PatternLayout.hh \
    log4cpp/Portability.hh \
    log4cpp/Priority.hh \
    log4cpp/PropertyConfigurator.hh \
    log4cpp/RemoteSyslogAppender.hh \
    log4cpp/RollingFileAppender.hh \
    log4cpp/SimpleConfigurator.hh \
    log4cpp/SimpleLayout.hh \
    log4cpp/SmtpAppender.hh \
    log4cpp/StringQueueAppender.hh \
    log4cpp/SyslogAppender.hh \
    log4cpp/TimeStamp.hh \
    log4cpp/TriggeringEventEvaluator.hh \
    log4cpp/TriggeringEventEvaluatorFactory.hh \
    log4cpp/Win32DebugAppender.hh

unix {
    target.path = /usr/lib
    INSTALLS += target
}
