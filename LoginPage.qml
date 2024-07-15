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

        width: parent.width

        anchors{
            centerIn: parent
        }

        Text{
            text: qsTr("E-mail")
        }

        Item{
            id: email_field_container

            /* Positioning */
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10

            /* Sizing */
            width: parent.width
            height: instance_of_default_styling_and_properties.defaultTextFieldHeight

            /* Styling */
            BorderImage{
                source: "import/sci/text_input_border.sci"
                anchors.fill: parent
            }

            TextInput {
                id: email_field

                /* Text validation */
                maximumLength: 20

                /* Positioning */
                anchors.centerIn: parent

                /* Sizing */
                width: parent.width - 20

                /* User input validation */
                validator: RegularExpressionValidator  {
                    regularExpression: instance_of_default_styling_and_properties.defaultTextFieldEmailsValidator
                }

                /* Styling */
                font.pixelSize: instance_of_default_styling_and_properties.defaultTextFieldFontSize
                font.underline: false
                font.weight: Font.Normal
                color: acceptableInput ? instance_of_default_styling_and_properties.defaultTextFieldValidInputColor : instance_of_default_styling_and_properties.defaultTextFieldInvalidInputColor

                /* User interaction */
                echoMode: TextInput.Normal
                activeFocusOnPress: true
            }
        }

        Text{
            text: qsTr("Password")
        }

        Item{
            id: password_field_container

            /* Positioning */
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10

            /* Sizing */
            width: parent.width
            height: instance_of_default_styling_and_properties.defaultTextFieldHeight

            /* Styling */
            BorderImage{
                source: "import/sci/text_input_border.sci"
                anchors.fill: parent
            }

            TextInput {
                id: password_field

                /* Text validation */
                maximumLength: 20

                /* Positioning */
                anchors.centerIn: parent

                /* Sizing */
                width: parent.width - 20

                /* User input validation */
                validator: RegularExpressionValidator  {
                    regularExpression: instance_of_default_styling_and_properties.defaultTextFieldPasswordsValidator
                }

                /* Styling */
                font.pixelSize: instance_of_default_styling_and_properties.defaultTextFieldFontSize
                font.underline: false
                font.weight: Font.Normal
                color: acceptableInput ? instance_of_default_styling_and_properties.defaultTextFieldValidInputColor : instance_of_default_styling_and_properties.defaultTextFieldInvalidInputColor

                /* User interaction */
                echoMode: TextInput.PasswordEchoOnEdit
                activeFocusOnPress: true
            }
        }
    }

    Button{
            id: login_to_account_button

            anchors{
                top: login_form_fields.bottom
            }

            width: parent.width
            height: instance_of_default_styling_and_properties.defaultButtonHeight
            text: qsTr("Log-in to account")
            onClicked: {
                // @todo: Validate that what user entered matches a user in the database
                user_session_details_instance.page = "ProfilePage.qml"
            }
    }

    Button{
        id: request_password_reset_button

        anchors{
            top: login_to_account_button.bottom
        }

        width: parent.width
        height: instance_of_default_styling_and_properties.defaultButtonHeight
        text: qsTr("Reset password")

        onClicked: {
            // @todo: Send e-mail to user with means to reset their password
        }
    }



}
