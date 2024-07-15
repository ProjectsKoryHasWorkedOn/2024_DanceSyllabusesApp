import QtQuick

Item {
    Text {
        id: welcome_text
        text:
            qsTr("Hello ")
            + instance_of_user_details.user_name
        font.family: "Helvetica"
        font.pointSize: 24
        color: "grey"
        anchors {
            top: parent.top
        }
    }
}
