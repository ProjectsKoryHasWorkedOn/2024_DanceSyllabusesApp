import QtQuick 2.15
import QtQuick.Controls

Item {
    id: titlebar
    width: parent.width
    height: instance_of_default_qml_class_values.programTitleBarHeight

    anchors {
        top: parent.top
    }

    Rectangle{
        width: parent.width
        color: instance_of_default_qml_class_values.programTitleBarColor
        height: parent.height

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

    // @todo: Could make this page navigation based on user back button input
        // @todo: Add "phone hotkey" for this

    Button{
        id: back_to_welcome_screen_button_B
        text: qsTr("Back")
        width: instance_of_default_qml_class_values.defaultCornerButtonWidth
        height: instance_of_default_qml_class_values.defaultButtonHeight
        // Show it if it's on the sign up or login pages
        visible: (
            (user_session_details_instance.page == "PageLogin.qml") ||
            (user_session_details_instance.page == "PageSignUp.qml") ||
            (user_session_details_instance.page == "PageArticle.qml")
        ) ? true : false
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

            if(
                (user_session_details_instance.page == "PageLogin.qml") ||
                (user_session_details_instance.page == "PageSignUp.qml")
            ){
                user_session_details_instance.page = "PageWelcome.qml"
            }

            if(user_session_details_instance.page == "PageArticle.qml"){
                user_session_details_instance.page = "PageArticles.qml"
            }


        }
    }



    // @todo: Add filters button on LHS in place of quit button
    // No need to have quit button as most apps are closed via Android phone OS

    Button {
        id: filters_button
        width: instance_of_default_qml_class_values.defaultCornerButtonWidth
        height: instance_of_default_qml_class_values.defaultButtonHeight
        text: qsTr("Filters")
        visible: (
            (user_session_details_instance.page == "PageLessons.qml")
        ) ? true : false

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
            // @todo: Open sidebar

        }
    }
}
