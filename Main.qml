import QtQuick
import QtQuick.Controls

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
    }
}

