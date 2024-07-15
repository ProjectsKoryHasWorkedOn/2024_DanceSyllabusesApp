import QtQuick
import QtQuick.Controls

Item {
    Button{
        id: back_to_welcome_screen_button_B
        text: qsTr("Back")

        onClicked: {
            mainStack.replace("WelcomePage.qml")
        }
    }

    Column{
        id: login_form_fields

        anchors{
            centerIn: parent
        }

        Text{
            text: qsTr("E-mail")
        }

        Text{
            text: qsTr("Password")
        }
    }

    Button{
            id: login_to_account_button

            anchors{
                top: login_form_fields.bottom
            }

            width: 50
            text: qsTr("Log-in to account")
            onClicked: {
                mainStack.replace("ProfilePage.qml")
            }
    }

    Button{
        id: request_password_reset_button

        anchors{
            top: login_to_account_button.bottom
        }

        width: 50
        text: qsTr("Reset password")
    }



}
