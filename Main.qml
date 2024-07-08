import QtQuick
import QtQuick.Controls
import QtMultimedia

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Latin Dance Program")
    property var page: profile
    Image {
        id: gremlin
        source: "gremlin.jpg"
        smooth: true
        x: 50
        y: 250
    }

    Rectangle {
        width: 640
        height: 480
        visible: true

        MediaPlayer {
            id: player
            source: "gremlin_dance.mp4"
            videoOutput: videoOutput
        }

        VideoOutput {
            id: videoOutput
            anchors.fill: parent
        }

    }



    Row {
        anchors {
            bottom: parent.bottom
        }
        spacing: 2
        Button {
            id: profile
            text: qsTr("Profile")
            onClicked: page = profile
            contentItem: Text {
                text: profile.text
                color: page == profile ? "blue": "grey"
            }
        }
        Button {
            id: articles
            text: qsTr("Articles")
            onClicked: page = articles
            contentItem: Text {
                text: articles.text
                color: page == articles ? "blue": "grey"
            }
        }

        Button{
            id: gremlin_effects
            text: qsTr("Gremlin")
            onClicked: player.play()
        }
    }
}

