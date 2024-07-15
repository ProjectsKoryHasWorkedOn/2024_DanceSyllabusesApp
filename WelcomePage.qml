import QtQuick
import QtQuick.Controls

Item {
    Text {
        id: program_title_text
        text: qsTr("Dance Syllabuses")
        font.family: "Helvetica"
        font.pointSize: 32
        color: "grey"
        anchors {
            top: parent.top
        }
    }

    Image{
        id: program_preview_media
        source: "import/img/gremlin.jpg"
        width: 250
        height: 250

        anchors{
            centerIn: parent
        }
    }

    Row{
        anchors{
            top: program_preview_media.bottom
        }

        Button{
            id: login_screen_button
            text: qsTr("Log-in")
            onClicked: {
                user_session_details_instance.page = "LoginPage.qml"
            }
        }

        Button{
            id: signup_screen_button
            text: qsTr("Sign-up")
            onClicked: {
                user_session_details_instance.page = "SignUpPage.qml"
            }
        }
    }

}
