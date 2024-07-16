import QtQuick
import QtQuick.Controls

Item {
    Image{
        id: program_preview_media
        source: instance_of_default_qml_class_values.welcomeScreenImage
        width: (parent.width - 50)
        height: 350
        fillMode: Image.PreserveAspectFit

        anchors{
            centerIn: parent
        }
    }

    Row{

        width: parent.width

        anchors{
            top: program_preview_media.bottom
        }

        Button{
            id: login_screen_button
            width: (parent.width / 2)

            background: Rectangle {
                color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
            }

            contentItem: Text {
                text: qsTr("Log-in")
                color: instance_of_default_qml_class_values.defaultButtonTextColor
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.DemiBold
            }


            onClicked: {
                instance_of_sfx_player.activateSoundPlayer(instance_of_default_qml_class_values.defaultButtonClickSound);
                user_session_details_instance.page = "PageLogin.qml"
            }
        }

        Button{
            id: signup_screen_button
            width: (parent.width / 2)
            background: Rectangle {
                color: instance_of_default_qml_class_values.defaultButtonBackgroundColor
                border.width: instance_of_default_qml_class_values.defaultButtonBorderWidth
                border.color: instance_of_default_qml_class_values.defaultButtonBorderColor
            }

            contentItem: Text {
                width: parent.width
                height: parent.height
                text: qsTr("Sign-up")
                color: instance_of_default_qml_class_values.defaultButtonTextColor
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.DemiBold
            }


            onClicked: {
                instance_of_sfx_player.activateSoundPlayer(instance_of_default_qml_class_values.defaultButtonClickSound);
                user_session_details_instance.page = "PageSignUp.qml"
            }
        }
    }

}
