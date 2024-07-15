import QtQuick
import QtQuick.Controls

Item {

    Button{
        id: back_to_welcome_screen_button_A
        text: qsTr("Back")

        onClicked: {
            user_session_details_instance.page = "WelcomePage.qml"
        }
    }

    Column {
        id: user_signup_form

        width: parent.width

        anchors{
            centerIn: parent
        }

        Text{
            text: qsTr("Full name")
        }

        Item{
            id: user_name_field_container

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
                id: user_name_field

                /* Text validation */
                maximumLength: 20

                /* Positioning */
                anchors.centerIn: parent

                /* Sizing */
                width: parent.width - 20

                /* User input validation */
                validator: RegularExpressionValidator  {
                    regularExpression: instance_of_default_styling_and_properties.defaultTextFieldNamesValidationRegExp
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
                    regularExpression: instance_of_default_styling_and_properties.defaultTextFieldEmailsValidationRegExp
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
                    regularExpression: instance_of_default_styling_and_properties.defaultTextFieldPasswordsValidationRegExp
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
        anchors{
            top: user_signup_form.bottom
        }

        id: create_account_button
        text: qsTr("Create account")


        function updateUserDetails() {
            instance_of_user_details.user_name = user_name_field.text
            instance_of_user_details.user_email = email_field.text
            instance_of_user_details.user_password = password_field.text
        }

        onClicked: {
            updateUserDetails();
            // @todo: Store user details in a database
                // @todo: If user email doesn't match existing user email in database
            user_session_details_instance.page = "LoginPage.qml"
        }
    }



}
