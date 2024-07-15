import QtQuick
import QtQuick.Controls

Item{
    id: navigation_system
    width: window.width
    height: window.height
    visible: true
    enabled: true

    Row {
        id: navbar

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
            height: instance_of_default_styling_and_properties.defaultButtonHeight
            text: qsTr("Profile")
            padding: 0
            background: Rectangle {
                color: "transparent"
            }
            onClicked:{
                user_session_details_instance.page = "ProfilePage.qml"
            }
            contentItem: Text {
                text: profile_button.text
                color: user_session_details_instance.page == "ProfilePage.qml" ? instance_of_default_styling_and_properties.defaultButtonSelectedColor : instance_of_default_styling_and_properties.defaultButtonNotSelectedColor
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
        Button {
            id: articles_button
            width: (navbar.width / 5)
            height: instance_of_default_styling_and_properties.defaultButtonHeight
            text: qsTr("Articles")
            padding: 0
            background: Rectangle {
                color: "transparent"
            }
            onClicked:{
                user_session_details_instance.page = "ArticlesPage.qml"
            }
            contentItem: Text {
                text: articles_button.text
                color: user_session_details_instance.page == "ArticlesPage.qml" ? instance_of_default_styling_and_properties.defaultButtonSelectedColor : instance_of_default_styling_and_properties.defaultButtonNotSelectedColor
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
        Button {
            id: lessons_button
            width: (navbar.width / 5)
            height: instance_of_default_styling_and_properties.defaultButtonHeight
            text: qsTr("Lessons")
            padding: 0
            background: Rectangle {
                color: "transparent"
            }
            onClicked:{
                user_session_details_instance.page = "LessonsPage.qml"
            }
            contentItem: Text {
                text: lessons_button.text
                color: user_session_details_instance.page == "LessonsPage.qml" ? instance_of_default_styling_and_properties.defaultButtonSelectedColor : instance_of_default_styling_and_properties.defaultButtonNotSelectedColor
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
        Button {
            id: beat_finder_button
            width: (navbar.width / 5)
            height: instance_of_default_styling_and_properties.defaultButtonHeight
            text: qsTr("Beat finder")
            padding: 0
            background: Rectangle {
                color: "transparent"
            }
            onClicked:{
                user_session_details_instance.page = "BeatFinderPage.qml"
            }
            contentItem: Text {
                text: beat_finder_button.text
                color: user_session_details_instance.page == "BeatFinderPage.qml" ? instance_of_default_styling_and_properties.defaultButtonSelectedColor : instance_of_default_styling_and_properties.defaultButtonNotSelectedColor
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
        Button {
            id: settings_button
            width: (navbar.width / 5)
            height: instance_of_default_styling_and_properties.defaultButtonHeight
            text: qsTr("Settings")
            padding: 0
            background: Rectangle {
                color: "transparent"
            }
            onClicked:{
                user_session_details_instance.page = "SettingsPage.qml"
            }
            contentItem: Text {
                text: settings_button.text
                color: user_session_details_instance.page == "SettingsPage.qml" ? instance_of_default_styling_and_properties.defaultButtonSelectedColor : instance_of_default_styling_and_properties.defaultButtonNotSelectedColor
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
