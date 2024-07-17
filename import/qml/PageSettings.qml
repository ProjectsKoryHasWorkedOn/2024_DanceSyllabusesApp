import QtQuick
import QtQuick.Controls

// Can't use column
Item {
    Item {
        id: settings_page_contents_container
        y: instance_of_default_qml_class_values.programTitleBarHeight // Move element down so it's below title bar
        width: parent.width

        // Section 01
        Text{
                id: program_settings_text
                text: qsTr("Program settings")
                width: parent.width
                anchors{
                    top: settings_page_contents_container.top
                }
            }

            Button {
                id: reset_program_button
                anchors{
                    top: program_settings_text.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Reset program")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: reset_program_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }



            Text{
                    id: reset_program_button_description_text
                    text: qsTr("Clears list of watched videos. Clears list of saved moves. Clears list of completed lessons")
                    width: parent.width
                    wrapMode: Text.WordWrap
                    anchors{
                        top: reset_program_button.bottom
                    }
            }


            Text{
                    id: turn_on_dark_mode_text
                    text: qsTr("Turn on dark mode")
                    width: parent.width
                    anchors{
                        top: reset_program_button_description_text.bottom
                    }
            }


            Switch{
                id: dark_mode_on_or_off_slider
                width: parent.width
                anchors{
                    top: turn_on_dark_mode_text.bottom
                }
            }

            Button {
                id: mute_global_sfx_button
                anchors{
                    top: dark_mode_on_or_off_slider.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Turn of all SFX")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: mute_global_sfx_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }



            // Section 02
            Text{
                    id: user_settings_text
                    text: qsTr("User settings")
                    width: parent.width
                    anchors{
                        top: mute_global_sfx_button.bottom
                    }
            }


            Button {
                id: log_out_of_account_button
                anchors{
                    top: user_settings_text.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Log-out of account")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: log_out_of_account_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }


            Button {
                id: delete_account_button
                anchors{
                    top: log_out_of_account_button.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Delete account")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: delete_account_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }


            Button {
                id: change_name_button
                anchors{
                    top: delete_account_button.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Change name")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: change_name_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Button {
                id: change_email_address_button
                anchors{
                    top: change_name_button.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Change e-mail address")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: change_email_address_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Button {
                id: change_password_button
                anchors{
                    top: change_email_address_button.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Change password")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: change_password_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }




            // Section 03
            Text{
                    id: support_text
                    text: qsTr("Support")
                    width: parent.width
                    anchors{
                        top: change_password_button.bottom
                    }
            }

            Button {
                id: share_suggestions_button
                anchors{
                    top: support_text.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Share suggestions")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: share_suggestions_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }


            Button {
                id: share_the_app_button
                anchors{
                    top: share_suggestions_button.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Share the app")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: share_the_app_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }


            Button {
                id: rate_the_app_button
                anchors{
                    top: share_the_app_button.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Rate the app")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: rate_the_app_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            // Section 04
            Text{
                    id: organization_text
                    text: qsTr("Organization")
                    width: parent.width
                    anchors{
                        top: rate_the_app_button.bottom
                    }
            }

            Button {
                id: view_website_button
                anchors{
                    top: organization_text.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Website")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: view_website_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }


            Button {
                id: view_instagram_page_button
                anchors{
                    top: view_website_button.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Instagram page")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: view_instagram_page_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }


            Button {
                id: view_facebook_page_button
                anchors{
                    top: view_instagram_page_button.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Facebook page")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: view_facebook_page_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }


            Button {
                id: view_youtube_channel_button
                anchors{
                    top: view_facebook_page_button.bottom
                }
                width: parent.width
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("YouTube channel")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked:{
                    // @todo: Action
                }
                contentItem: Text {
                    text: view_youtube_channel_button.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }


    }
}
