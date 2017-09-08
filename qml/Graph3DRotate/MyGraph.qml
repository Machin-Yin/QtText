import QtQuick 2.0

Rectangle {
    width: bee.width
    height: bee.height
    transform: Rotation {
        origin.x: 0
        origin.y: bee.height/5
        axis {
            x: 0
            y: 1
            z: 0
        }
        NumberAnimation on angle {
               from: 0
               to: 40
               duration: 5000
//               loops: Animation.Infinite
        }
    }

    AnimatedImage {
        id: bee
        smooth: true
        source: "images/bee.gif"
    }
//    Image {
//        id: bee
//        width: 1920/3
//        height: 1080/3
//        smooth: true
//        source: "images/universe.jpg"
//    }
}
