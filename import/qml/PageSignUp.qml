import QtQuick
import QtQuick.Controls

Item {
    Column {
        id: user_signup_form

        /* Sizing */
        width: parent.width

        /* Positioning */
        anchors{
            centerIn: parent
            leftMargin: instance_of_default_qml_class_values.defaultFormLeftAndRightMarginValue
            rightMargin: instance_of_default_qml_class_values.defaultFormLeftAndRightMarginValue
        }

        Text{
            text: qsTr("Full name")
        }

        Item{
            id: user_name_field_container

            /* Positioning */
            anchors {
                left: parent.left
                right: parent.right
            }

            /* Sizing */
            width: parent.width
            height: instance_of_default_qml_class_values.defaultTextFieldHeight

            /* Styling */
            BorderImage{
                source: instance_of_default_qml_class_values.textInputBorderImageLoader
                anchors.fill: parent
            }

            TextInput {
                id: user_name_field

                /* Text validation */
                maximumLength: instance_of_default_qml_class_values.defaultTextFieldNamesMaximumLength

                /* Positioning */
                anchors.centerIn: parent

                /* Sizing */
                width: parent.width - 20

                /* User input validation */
                validator: RegularExpressionValidator  {
                    regularExpression: instance_of_default_qml_class_values.defaultTextFieldNamesValidationRegExp
                }

                /* Styling */
                font.pixelSize: instance_of_default_qml_class_values.defaultTextFieldFontSize
                font.underline: false
                font.weight: Font.Normal
                color: acceptableInput ? instance_of_default_qml_class_values.defaultTextFieldValidInputColor : instance_of_default_qml_class_values.defaultTextFieldInvalidInputColor

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
            anchors {
                left: parent.left
                right: parent.right
            }

            /* Sizing */
            width: parent.width
            height: instance_of_default_qml_class_values.defaultTextFieldHeight

            /* Styling */
            BorderImage{
                source: instance_of_default_qml_class_values.textInputBorderImageLoader
                anchors.fill: parent
            }

            TextInput {
                id: email_field

                /* Text validation */
                maximumLength: instance_of_default_qml_class_values.defaultTextFieldEmailAddressesMaximumLength

                /* Positioning */
                anchors.centerIn: parent

                /* Sizing */
                width: parent.width - 20

                /* User input validation */
                validator: RegularExpressionValidator  {
                    regularExpression: instance_of_default_qml_class_values.defaultTextFieldEmailsValidationRegExp
                }

                /* Styling */
                font.pixelSize: instance_of_default_qml_class_values.defaultTextFieldFontSize
                font.underline: false
                font.weight: Font.Normal
                color: acceptableInput ? instance_of_default_qml_class_values.defaultTextFieldValidInputColor : instance_of_default_qml_class_values.defaultTextFieldInvalidInputColor

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
            anchors {
                left: parent.left
                right: parent.right
            }

            /* Sizing */
            width: parent.width
            height: instance_of_default_qml_class_values.defaultTextFieldHeight

            /* Styling */
            BorderImage{
                source: instance_of_default_qml_class_values.textInputBorderImageLoader
                anchors.fill: parent
            }

            TextInput {
                id: password_field

                /* Text validation */
                maximumLength: instance_of_default_qml_class_values.defaultTextFieldPasswordsMaximumLength

                /* Positioning */
                anchors.centerIn: parent

                /* Sizing */
                width: parent.width - 20

                /* User input validation */
                validator: RegularExpressionValidator  {
                    regularExpression: instance_of_default_qml_class_values.defaultTextFieldPasswordsValidationRegExp
                }

                /* Styling */
                font.pixelSize: instance_of_default_qml_class_values.defaultTextFieldFontSize
                font.underline: false
                font.weight: Font.Normal
                color: acceptableInput ? instance_of_default_qml_class_values.defaultTextFieldValidInputColor : instance_of_default_qml_class_values.defaultTextFieldInvalidInputColor

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
        background: Rectangle {
            color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
        }

        contentItem: Text {
            text: parent.text
            color: instance_of_default_qml_class_values.defaultButtonTextColor
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.DemiBold
        }

        function updateUserDetails() {
            instance_of_user_details.user_name = user_name_field.text
            instance_of_user_details.user_email = email_field.text
            instance_of_user_details.user_password = password_field.text
        }

        onClicked: {
            instance_of_sfx_player.activateSoundPlayer(instance_of_default_qml_class_values.defaultButtonClickSound);

            updateUserDetails();
            // @todo: Store user details in a database
                // @todo: If user email doesn't match existing user email in database
            user_session_details_instance.page = "PageLogin.qml"

            // Clear what's in the fields
                // Not stricly necessary
            user_name_field.clear()
            password_field.clear()
            email_field.clear()
        }
    }



}
