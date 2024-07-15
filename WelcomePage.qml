import QtQuick
import QtQuick.Controls

Item {
    Text {
        id: program_title_text
        text: qsTr("Dance Syllabuses")

        font: instance_of_default_styling_and_properties.header1Font
        color: instance_of_default_styling_and_properties.headerFontColor

        anchors {
            top: parent.top
        }
    }

    Image{
        id: program_preview_media
        source: "import/img/gremlin.jpg"
        width: (parent.width - 50)
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
