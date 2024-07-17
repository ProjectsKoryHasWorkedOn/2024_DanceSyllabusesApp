import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    Item {
        id: settings_page_contents_container
        y: instance_of_default_qml_class_values.programTitleBarHeight // Move element down so it's below title bar
        width: parent.width
        height: (parent.height
                 - instance_of_default_qml_class_values.amountToDecreaseHeightOfPageBy)

        // Debug rectangle
        Rectangle {
            anchors.fill: parent
            width: parent.width
            height: parent.height
            color: "orange"
        }

/*
        ScrollView{
            id: add_scrollbar_to_settings_page_contents
            anchors{
                top: parent.top
            }
            width: parent.width
            height: parent.height
            contentWidth: parent.width
            contentHeight: put_settings_page_contents_into_a_column.height
            clip: true
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
*/
        ColumnLayout {
            id: put_settings_page_contents_into_a_column
            anchors.fill: parent
            spacing: 2

            // Debug rectangle
            Rectangle {
                Layout.fillWidth: true
                height: 50
                color: "blue"
            }

            // Section 01
            Text {
                id: program_settings_text
                text: qsTr("Program settings")
                Layout.fillWidth: true
            }

            Button {
                id: reset_program_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Reset program")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: reset_program_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Text {
                id: reset_program_button_description_text
                text: qsTr("Clears list of watched videos. Clears list of saved moves. Clears list of completed lessons")
                Layout.fillWidth: true
                wrapMode: Text.WordWrap
            }

            Text {
                id: turn_on_dark_mode_text
                text: qsTr("Turn on dark mode")
                Layout.fillWidth: true
            }

            Switch {
                id: dark_mode_on_or_off_slider
                Layout.fillWidth: true
            }

            Button {
                id: mute_global_sfx_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Turn of all SFX")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: mute_global_sfx_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            // Section 02
            Text {
                id: user_settings_text
                text: qsTr("User settings")
                Layout.fillWidth: true
            }

            Button {
                id: log_out_of_account_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Log-out of account")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: log_out_of_account_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Button {
                id: delete_account_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Delete account")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: delete_account_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Button {
                id: change_name_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Change name")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: change_name_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Button {
                id: change_email_address_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Change e-mail address")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: change_email_address_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Button {
                id: change_password_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Change password")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: change_password_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            // Section 03
            Text {
                id: support_text
                text: qsTr("Support")
                Layout.fillWidth: true
            }

            Button {
                id: share_suggestions_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Share suggestions")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: share_suggestions_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Button {
                id: share_the_app_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Share the app")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: share_the_app_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Button {
                id: rate_the_app_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Rate the app")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: rate_the_app_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            // Section 04
            Text {
                id: organization_text
                text: qsTr("Organization")
                Layout.fillWidth: true
            }

            Button {
                id: view_website_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Website")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: view_website_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Button {
                id: view_instagram_page_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Instagram page")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: view_instagram_page_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Button {
                id: view_facebook_page_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("Facebook page")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: view_facebook_page_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Button {
                id: view_youtube_channel_button
                Layout.fillWidth: true
                height: instance_of_default_qml_class_values.defaultButtonHeight
                text: qsTr("YouTube channel")
                padding: 0

                background: Rectangle {
                    color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                    border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                    border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
                }

                onClicked: {

                    // @todo: Action
                }
                contentItem: Text {
                    text: view_youtube_channel_button.text
                    color: instance_of_default_qml_class_values.defaultButtonTextColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }
    // }
   }
}
