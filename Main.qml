import QtQuick
import QtQuick.Controls
import QtQuick.Window

Window {
    id: window
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Latin Dance Program")
    color: "#ffffff"

    UserDetails {
        id: instance_of_user_details
    }

    UserSessionDetails{
        id: user_session_details_instance
    }

    StackView {
        id: mainStack
        anchors.fill: parent

        Component.onCompleted: {
            // if not logged in
            user_session_details_instance.page = "WelcomePage.qml"
            // else push another
        }
    }

    NavigationSystem{
        id: instance_of_navigation_system
    }
}
