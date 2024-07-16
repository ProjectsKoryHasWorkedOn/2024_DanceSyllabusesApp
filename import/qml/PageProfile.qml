import QtQuick

Item {
    Text {
        id: welcome_text
        y: instance_of_default_qml_class_values.programTitleBarHeight // Move element down so it's below title bar
        text:
            qsTr("Hello ")
            + instance_of_user_details.user_name

        font: instance_of_default_qml_class_values.bodyTextFont
        color: instance_of_default_qml_class_values.bodyTextFontColor
    }
}
