import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtMultimedia

Window {
    id: window
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Latin Dance Program")
    color: "#ffffff"

    QtObject{
        id: audio_video_playback
        property bool playingVideo: false
        property bool playingSound: false
    }


    SoundEffect{
        id: playsound
        source: "import/sfx/gremlin_laugh.wav"
    }

    Rectangle {
        id: video_player_container
        width: parent.width
        height: 250
        color: "#000000"
        visible: false
        anchors.centerIn: parent

        MediaPlayer {
            id: video_player
            loops: 0
            source: "import/video/gremlin_dance.mp4"
            videoOutput: video_output
            audioOutput: AudioOutput {}
        }

        VideoOutput {
            id: video_output
            anchors.fill: video_player_container
        }

    }

    Button{
        id: gremlin_button
        y: 50
        text: qsTr("Gremlin")

        onClicked: {
            if(playsound.playing == true){
                audio_video_playback.playingSound = true
            }
            else{
               audio_video_playback.playingSound = false
            }

            if(audio_video_playback.playingSound == false){
                 playsound.play()
            }
        }


        onReleased: {
            if(video_player.PlayingState){
                audio_video_playback.playingVideo = true
            }
            else{
                audio_video_playback.playingVideo = false
            }

            if(audio_video_playback.playingVideo == false){
                video_player.play()
            }


            video_player_container.visible = true
        }



    }

    Text {
        id: welcome_text
        text: qsTr("Hello!")
        font.family: "Helvetica"
        font.pointSize: 24
        color: "grey"
    }


        TextField {
            id: username_field
            echoMode: TextInput.Normal
            activeFocusOnPress: true
            placeholderText: qsTr("Enter username")
            anchors.centerIn: parent
            selectedTextColor: "#000000"
            placeholderTextColor: "#A9A9A9"
            width: parent.width
            height: 55

            // can't be window for some reason

            onTextChanged: {
                // need to somehow get id of user_details in UserDetails file
                UserDetails.username = username_field.text
                welcome_text.text = qsTr("Hello ") + UserDetails.Username + qsTr("!")
            }

            background: Rectangle {
                color: "transparent"
                border.color: "black"
                border.width: 2
                radius: 10 // rounded corners
            }
        }





        Row {
            id: navbar
            anchors {
                bottom: parent.bottom
                // can't be window.bottom for some reason
            }

            property string page: "profile"
            width: window.width

            Button {
                id: profile_button
                width: (navbar.width / 5)
                text: qsTr("Profile")
                padding: 0
                background: Rectangle {
                    color: "transparent"
                }
                onClicked:  navbar.page = "profile"
                contentItem: Text {
                    text: profile_button.text
                    color: navbar.page == "profile" ? "blue": "grey"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            Button {
                id: articles_button
                width: (navbar.width / 5)
                text: qsTr("Articles")
                padding: 0
                background: Rectangle {
                    color: "transparent"
                }
                onClicked: navbar.page = "articles"
                contentItem: Text {
                    text: articles_button.text
                    color: navbar.page == "articles" ? "blue": "grey"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            Button {
                id: lessons_button
                width: (navbar.width / 5)
                text: qsTr("Lessons")
                padding: 0
                background: Rectangle {
                    color: "transparent"
                }
                onClicked: navbar.page = "lessons"
                contentItem: Text {
                    text: lessons_button.text
                    color: navbar.page == "lessons" ? "blue": "grey"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            Button {
                id: beat_finder_button
                width: (navbar.width / 5)
                text: qsTr("Beat finder")
                padding: 0
                background: Rectangle {
                    color: "transparent"
                }
                onClicked: navbar.page = "beat_finder"
                contentItem: Text {
                    text: beat_finder_button.text
                    color: navbar.page == "beat_finder" ? "blue": "grey"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            Button {
                id: settings_button
                width: (navbar.width / 5)
                text: qsTr("Settings")
                padding: 0
                background: Rectangle {
                    color: "transparent"
                }
                onClicked: navbar.page = "settings"
                contentItem: Text {
                    text: settings_button.text
                    color: navbar.page == "settings" ? "blue": "grey"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }


        }



}

