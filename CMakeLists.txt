cmake_minimum_required(VERSION 3.20)

project(Dance_Syllabuses VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


find_package(Qt6 6.0 COMPONENTS Core Quick Multimedia QuickControls2 Qml REQUIRED)

qt_standard_project_setup(REQUIRES 6.0)

qt_add_executable(appDance_Syllabuses
    main.cpp
)

qt_add_qml_module(appDance_Syllabuses
   URI Dance_Syllabuses
   VERSION 1.0
   QML_FILES
    Main.qml UserDetails.qml ProfilePage.qml ArticlesPage.qml SettingsPage.qml LessonsPage.qml BeatFinderPage.qml
    LessonPage.qml NavigationSystem.qml WelcomePage.qml SignUpPage.qml LoginPage.qml
   RESOURCES
    import/img/gremlin.jpg
    import/video/gremlin_dance.mp4
    import/sfx/gremlin_laugh.wav
    import/img/text_input_border.webp
    import/sci/text_input_border.sci
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appDance_Syllabuses PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appDance_Syllabuses
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appDance_Syllabuses PRIVATE
    Qt6::Qml
    Qt6::Core
    Qt6::Quick
    Qt6::Multimedia
    Qt6::QuickControls2
)

include(GNUInstallDirs)
install(TARGETS appDance_Syllabuses
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
