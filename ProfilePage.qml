import QtQuick

Item {

    Text {
        id: welcome_text
        text:
            qsTr("Hello ")
            + instance_of_user_details.user_name

        font: instance_of_default_styling_and_properties.bodyTextFont
        color: instance_of_default_styling_and_properties.bodyTextFontColor

        anchors {
            top: parent.top
        }
    }
}
