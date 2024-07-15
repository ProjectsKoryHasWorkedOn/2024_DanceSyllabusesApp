import QtQuick
import QtQuick.Controls

Item {

    Button{
        id: back_to_welcome_screen_button_A
        text: qsTr("Back")

        onClicked: {
            mainStack.replace("WelcomePage.qml")
        }
    }

    Column {
        id: user_signup_form

        anchors{
            centerIn: parent
        }

        Text{
            text: qsTr("Full name")
        }

        Item{
            /* Positioning */
            y: 50
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10

            /* Sizing */
            width: parent.width
            height: 28

            /* Styling */
            BorderImage{
                source: "import/sci/text_input_border.sci"
                anchors.fill: parent
            }

            TextInput {
                id: username_field

                /* Text validation */
                maximumLength: 20

                /* Positioning */
                anchors.centerIn: parent

                /* Sizing */
                width: parent.width - 20
                /* User input validation */
                validator: RegularExpressionValidator  {
                    regularExpression: /[^\s\n\r]+/
                }

                /* Styling */
                font.pixelSize: 16
                font.underline: false
                font.weight: Font.Normal
                color: acceptableInput ? "black" : "red"

                /* User interaction */
                echoMode: TextInput.Normal
                activeFocusOnPress: true

                function updateUsername() {
                    instance_of_user_details.user_name = username_field.text


                }

                onTextChanged: {
                    updateUsername()
                }
            }
        }

        Text{
            text: qsTr("E-mail")
        }

        Text{
            text: qsTr("Password")
        }

    }

    Button{
        anchors{
            top: user_signup_form.bottom
        }

        id: create_account_button
        text: qsTr("Create account")
    }


}
