import QtQuick
import QtQuick.Controls


Item{
        id: navigation_system
        width: window.width
        height: window.height

        // Show it if it's not on the intro screens
        // @todo: Change it so we instead don't load it in on the intro screens
        /*
        visible:
            (user_session_details_instance.page != "PageWelcome.qml") &&
            (user_session_details_instance.page != "PageLogin.qml") &&
            (user_session_details_instance.page != "PageSignUp.qml") ? true : false
        */
        enabled: true

        Row {
            id: navbar
            height: instance_of_default_qml_class_values.defaultNavBarHeight
            width: parent.width
            anchors {
                bottom: parent.bottom
                left: parent.left
                right: parent.right
                // can't be window.bottom for some reason
            }

            Button {
                id: profile_button
                width: (navbar.width / 5)
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Profile")
                padding: 0
                background: Rectangle {
                    color: "transparent"
                }
                onClicked:{
                    instance_of_sfx_player.activateSoundPlayer(instance_of_default_qml_class_values.defaultButtonClickSound);
                    user_session_details_instance.page = "PageProfile.qml"
                }
                contentItem: Text {
                    text: profile_button.text
                    color: user_session_details_instance.page == "PageProfile.qml" ? instance_of_default_qml_class_values.defaultButtonSelectedColor : instance_of_default_qml_class_values.defaultButtonNotSelectedColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            Button {
                id: articles_button
                width: (navbar.width / 5)
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Articles")
                padding: 0
                background: Rectangle {
                    color: "transparent"
                }
                onClicked:{
                    instance_of_sfx_player.activateSoundPlayer(instance_of_default_qml_class_values.defaultButtonClickSound);
                    user_session_details_instance.page = "PageArticles.qml"
                }
                contentItem: Text {
                    text: articles_button.text
                    color: (
                        (user_session_details_instance.page == "PageArticles.qml") ||
                        (user_session_details_instance.page == "PageArticle.qml")
                    ) ? instance_of_default_qml_class_values.defaultButtonSelectedColor : instance_of_default_qml_class_values.defaultButtonNotSelectedColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            Button {
                id: lessons_button
                width: (navbar.width / 5)
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Lessons")
                padding: 0
                background: Rectangle {
                    color: "transparent"
                }
                onClicked:{
                    instance_of_sfx_player.activateSoundPlayer(instance_of_default_qml_class_values.defaultButtonClickSound);
                    user_session_details_instance.page = "PageLessons.qml"
                }
                contentItem: Text {
                    text: lessons_button.text
                    color: user_session_details_instance.page == "PageLessons.qml" ? instance_of_default_qml_class_values.defaultButtonSelectedColor : instance_of_default_qml_class_values.defaultButtonNotSelectedColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            Button {
                id: beat_finder_button
                width: (navbar.width / 5)
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Beat finder")
                padding: 0
                background: Rectangle {
                    color: "transparent"
                }
                onClicked:{
                    instance_of_sfx_player.activateSoundPlayer(instance_of_default_qml_class_values.defaultButtonClickSound);
                    user_session_details_instance.page = "PageBeatFinder.qml"
                }
                contentItem: Text {
                    text: beat_finder_button.text
                    color: user_session_details_instance.page == "PageBeatFinder.qml" ? instance_of_default_qml_class_values.defaultButtonSelectedColor : instance_of_default_qml_class_values.defaultButtonNotSelectedColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            Button {
                id: settings_button
                width: (navbar.width / 5)
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Settings")
                padding: 0
                background: Rectangle {
                    color: "transparent"
                }
                onClicked:{
                    instance_of_sfx_player.activateSoundPlayer(instance_of_default_qml_class_values.defaultButtonClickSound);
                    user_session_details_instance.page = "PageSettings.qml"
                }
                contentItem: Text {
                    text: settings_button.text
                    color: user_session_details_instance.page == "PageSettings.qml" ? instance_of_default_qml_class_values.defaultButtonSelectedColor : instance_of_default_qml_class_values.defaultButtonNotSelectedColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }

        Rectangle {
            id: navbar_line
            height: 1
            width: parent.width
            color: "black"
            anchors {
                bottom: navbar.top
                left: parent.left
                right: parent.right
            }
        }
    }
