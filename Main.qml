import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtMultimedia

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

    StackView {
        id: mainStack
        anchors.fill: parent

        Component.onCompleted: {
            // if not logged in
            mainStack.push('WelcomePage.qml');
            // else push another
        }
    }

    NavigationSystem{
        id: instance_of_navigation_system
    }
}
