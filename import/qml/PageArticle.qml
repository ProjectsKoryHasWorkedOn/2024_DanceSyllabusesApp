import QtQuick
import QtQuick.Controls

Item {
    Item{
        id: article_contents_container
        y: instance_of_default_qml_class_values.programTitleBarHeight // Move element down so it's below title bar
        width: parent.width

        Text{
            id: article_viewed_title_text
            text: qsTr("[Article title]")
            font: instance_of_default_qml_class_values.header1Font
            color: instance_of_default_qml_class_values.headerFontColor
        }

        Text{
            id: article_viewed_full_text_text
            text: qsTr("[Article full text]")
            wrapMode: Text.Wrap
            font: instance_of_default_qml_class_values.bodyTextFont
            color: instance_of_default_qml_class_values.bodyTextFontColor
        }
    }
}
