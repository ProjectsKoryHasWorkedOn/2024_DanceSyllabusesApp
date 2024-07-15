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
        property string page: "profile"
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
            text: qsTr("Profile")
            padding: 0
            background: Rectangle {
                color: "transparent"
            }
            onClicked:{
                navbar.page = "profile"
                mainStack.replace("ProfilePage.qml")
            }
            contentItem: Text {
                text: profile_button.text
                color: navbar.page == "profile" ? "blue" : "grey"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
        Button {
            id: articles_button
            width: (navbar.width / 5)
            text: qsTr("Articles")
            padding: 0
            background: Rectangle {
                color: "transparent"
            }
            onClicked:{
                navbar.page = "articles"
                mainStack.replace("ArticlesPage.qml")
            }
            contentItem: Text {
                text: articles_button.text
                color: navbar.page == "articles" ? "blue" : "grey"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
        Button {
            id: lessons_button
            width: (navbar.width / 5)
            text: qsTr("Lessons")
            padding: 0
            background: Rectangle {
                color: "transparent"
            }
            onClicked:{
                navbar.page = "lessons"
                mainStack.replace("LessonsPage.qml")
            }
            contentItem: Text {
                text: lessons_button.text
                color: navbar.page == "lessons" ? "blue" : "grey"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
        Button {
            id: beat_finder_button
            width: (navbar.width / 5)
            text: qsTr("Beat finder")
            padding: 0
            background: Rectangle {
                color: "transparent"
            }
            onClicked:{
                navbar.page = "beat_finder"
                mainStack.replace("BeatFinderPage.qml")
            }
            contentItem: Text {
                text: beat_finder_button.text
                color: navbar.page == "beat_finder" ? "blue" : "grey"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
        Button {
            id: settings_button
            width: (navbar.width / 5)
            text: qsTr("Settings")
            padding: 0
            background: Rectangle {
                color: "transparent"
            }
            onClicked:{
                navbar.page = "settings"
                mainStack.replace("SettingsPage.qml")
            }
            contentItem: Text {
                text: settings_button.text
                color: navbar.page == "settings" ? "blue" : "grey"
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
