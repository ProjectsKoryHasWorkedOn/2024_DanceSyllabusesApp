import QtQuick
import QtQuick.Controls

Item {
    Item{
        id: profile_contents_container
        y: instance_of_default_qml_class_values.programTitleBarHeight // Move element down so it's below title bar

        Text {
            id: welcome_text
            text:
                qsTr("Hello ")
                + instance_of_user_details.user_name

            font: instance_of_default_qml_class_values.bodyTextFont
            color: instance_of_default_qml_class_values.bodyTextFontColor
        }

        Text {
            id: achievements_unlocked_text

            text: qsTr("Achievements unlocked")

            anchors{
                top: welcome_text.bottom
            }

        }

        // @todo: Achievements unlocked list
        Item {
            id: achievements_unlocked_list_container
            height: 150
        }

        Button {
            id: share_achievement_unlocked_button
            text: qsTr("Share achievements unlocked")
            anchors{
                top: achievements_unlocked_list_container.bottom
            }
        }


        Text {
            id: recently_watched_videos_text

            text: qsTr("Recently watched videos")

            anchors{
                top: share_achievement_unlocked_button.bottom
            }

        }

        Item {
            id: recently_watched_videos_container
            height: 150
        }


        Text {
            id: saved_videos_text

            text: qsTr("Saved videos")

            anchors{
                top: recently_watched_videos_container.bottom
            }

        }


        Item {
            id: saved_videos_container
            height: 150
        }



    }

}
