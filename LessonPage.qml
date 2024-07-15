import QtQuick
import QtMultimedia
import QtQuick.Controls

Item {

    QtObject {
        id: audio_video_playback
        property bool playingVideo: false
        property bool playingSound: false
    }



    SoundEffect {
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
        y: 100
        text: qsTr("Gremlin")

        onPressed: {
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
            if(video_player.playing == true){
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

    Button {
        id: mute_button
        y: 150
        text: qsTr("Mute")

        property bool soundOn: true;

        onPressed: {
            if (soundOn == true) {
                soundOn = false
                playsound.muted = true
                video_player.audioOutput.muted = true
            } else {
                soundOn = true
                playsound.muted = false
                video_player.audioOutput.muted = false
            }

        }
    }

    Button {
        id: pause_button
        y: 200
        text: qsTr("Pause")

        property bool pauseIt: false;

        onPressed: {
            if (pauseIt == true) {
                pauseIt = false
                video_player.pause()
            } else {
                pauseIt = true
                video_player.play()
            }

        }
    }


    Button {
        id: quit_button
        y: 250
        text: qsTr("Quit")


        onPressed: {
            Qt.quit()
        }
    }



    // volume slider button
    // loop button
    // sfx off/on setting
}
