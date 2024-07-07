import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Image {
          id: gremlin
          source: "gremlin.jpg"
          smooth: true
           x: 100
           y: 250
    }

}

