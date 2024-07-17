import QtQuick

Item {
    Item {
        id: lessons_contents_container
        y: instance_of_default_qml_class_values.programTitleBarHeight // Move element down so it's below title bar


    // @todo: List box
        /*
    ListModel{
        id: list_of_lessons

        ListElement {
            name: "Lesson 1"

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    user_session_details_instance.page = "PageLesson.qml"
                }
            }
        }
        */
    }
}
