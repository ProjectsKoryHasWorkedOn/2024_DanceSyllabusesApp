cmake_minimum_required(VERSION 3.16)

project(dancesyllabuses_app VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 COMPONENTS Core Quick Multimedia QuickControls2 REQUIRED)

qt_standard_project_setup()

qt_add_executable(appdancesyllabuses_app
    main.cpp
)

qt_add_qml_module(appdancesyllabuses_app
    URI dancesyllabuses_app
    VERSION 1.0
    QML_FILES
        Main.qml
   RESOURCES gremlin.jpg gremlin_dance.mp4
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appdancesyllabuses_app PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appdancesyllabuses_app
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appdancesyllabuses_app PRIVATE
    Qt6::Core
    Qt6::Quick
    Qt6::Multimedia
    Qt6::QuickControls2
)

include(GNUInstallDirs)
install(TARGETS appdancesyllabuses_app
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
