import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    width: universe.width
    height: universe.height

    Image {
        id: universe
        width: 1920/2
        height: 1080/2
        source: "images/universe.jpg"
    }
    BrightnessContrast {
        id: bright
        anchors.fill: universe
        source: universe
    }
    SequentialAnimation {
        id: imgAnim
        NumberAnimation {
            target: bright
            properties: "brightness"
            to: -0.5
            duration: 3000
        }
        NumberAnimation {
            target: bright
            properties: "contrast"
            to: 0.25
            duration: 2000
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            imgAnim.running = true
        }
    }

}
