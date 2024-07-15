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
            height: 28

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
            height: 28

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
                    regularExpression: /([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+)/
                }

                /* Styling */
                font.pixelSize: 16
                font.underline: false
                font.weight: Font.Normal
                color: acceptableInput ? "black" : "red"

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
            height: 28

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
                    regularExpression: /[^\s\n\r]+/
                }

                /* Styling */
                font.pixelSize: 16
                font.underline: false
                font.weight: Font.Normal
                color: acceptableInput ? "black" : "red"

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
            user_session_details_instance.page = "LoginPage.qml"
        }
    }



}
