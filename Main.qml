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

    DefaultStylingAndProperties {
        id: instance_of_default_styling_and_properties
    }

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
            // @todo: Check if user has logged in
            // if not logged in
            user_session_details_instance.page = "WelcomePage.qml"
            // else
            // user_session_details_instance.page = "ProfilePage.qml"
        }
    }

    NavigationSystem{
        id: instance_of_navigation_system
    }
}
