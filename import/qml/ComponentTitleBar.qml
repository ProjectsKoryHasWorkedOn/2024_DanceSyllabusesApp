import QtQuick 2.15
import QtQuick.Controls

Item {
    id: titlebar
    width: parent.width
    anchors {
        top: parent.top
    }

    Rectangle{
        width: parent.width
        color: instance_of_default_qml_class_values.programTitleBarColor
        height: instance_of_default_qml_class_values.programTitleBarHeight

        Text {
            id: program_title_text
            text: qsTr("Dance Syllabuses")
            horizontalAlignment: Text.AlignHCenter

            font: instance_of_default_qml_class_values.programTitleFont
            color: instance_of_default_qml_class_values.programTitleColor

            anchors {
                centerIn: parent
            }
        }
    }


    Button{
        id: back_to_welcome_screen_button_B
        text: qsTr("Back")
        width: instance_of_default_qml_class_values.defaultCornerButtonWidth
        height: instance_of_default_qml_class_values.defaultButtonHeight
        // Show it if it's on the sign up or login pages
        visible:
            (user_session_details_instance.page == "PageLogin.qml") ||
            (user_session_details_instance.page == "PageSignUp.qml") ? true : false
        background: Rectangle {
            color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
            radius: instance_of_default_qml_class_values.defaultButtonRoundedCornerValue
            border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
            border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
        }

        anchors{
            left: parent.left
            top: parent.top
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
            user_session_details_instance.page = "PageWelcome.qml"
        }
    }

    Button {
        id: quit_button
        width: instance_of_default_qml_class_values.defaultCornerButtonWidth
        height: instance_of_default_qml_class_values.defaultButtonHeight
        text: qsTr("Quit")

        anchors{
            right: parent.right
            top: parent.top
        }

        background: Rectangle {
            color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
            radius: instance_of_default_qml_class_values.defaultButtonRoundedCornerValue
            border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
            border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
        }

        contentItem: Text {
            text: parent.text
            color: instance_of_default_qml_class_values.defaultButtonTextColor
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.DemiBold
        }

        onPressed: {
            Qt.quit()
        }
    }
}
