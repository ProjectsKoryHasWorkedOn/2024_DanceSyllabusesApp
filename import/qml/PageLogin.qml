import QtQuick
import QtQuick.Controls

Item {

    Column{
        id: login_form_fields

        width: parent.width

        anchors{
            centerIn: parent
            leftMargin: instance_of_default_qml_class_values.defaultFormLeftAndRightMarginValue
            rightMargin: instance_of_default_qml_class_values.defaultFormLeftAndRightMarginValue
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


                validator:RegularExpressionValidator{
                    regularExpression:instance_of_default_qml_class_values.defaultTextFieldEmailsValidationRegExp
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
            id: login_to_account_button

            anchors{
                top: login_form_fields.bottom
            }

            width: parent.width
            height: instance_of_default_qml_class_values.defaultButtonHeight
            text: qsTr("Log-in to account")
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

            onClicked: {
                instance_of_sfx_player.activateSoundPlayer(instance_of_default_qml_class_values.defaultButtonClickSound);

                // @todo: Validate that what user entered matches a user in the database
                user_session_details_instance.page = "PageProfile.qml"
            }
    }

    Button{
        id: request_password_reset_button

        anchors{
            top: login_to_account_button.bottom
        }

        width: parent.width
        height: instance_of_default_qml_class_values.defaultButtonHeight
        text: qsTr("Reset password")
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

        onClicked: {
            instance_of_sfx_player.activateSoundPlayer(instance_of_default_qml_class_values.defaultButtonClickSound);

            // @todo: Send e-mail to user with means to reset their password
        }
    }



}
