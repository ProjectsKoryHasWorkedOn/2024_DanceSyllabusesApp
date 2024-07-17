import QtQuick
import QtQuick.Controls

Item {
    Item {
        id: list_of_articles_container
        y: instance_of_default_qml_class_values.programTitleBarHeight // Move element down so it's below title bar
        width: parent.width
        height: (parent.height - instance_of_default_qml_class_values.programTitleBarHeight)
        // @todo: Also subtract size of navbar from height of it

        Text{
          id: article_preview_title_text
          text: qsTr("[Article title]")
          font: instance_of_default_qml_class_values.bodyTextFont
          color: instance_of_default_qml_class_values.bodyTextFontColor
          anchors{
              top: parent.top
          }
        }

        Text{
            id: article_preview_blurb_text
            text: qsTr("[Article blurb]")
            font: instance_of_default_qml_class_values.bodyTextFont
            color: instance_of_default_qml_class_values.bodyTextFontColor
            anchors{
                top: article_preview_title_text.bottom
            }
        }

       MouseArea{
        anchors.fill: parent
        onClicked: {
            user_session_details_instance.page = "PageArticle.qml"
        }

       }


    }
}
