import QtQuick 2.4

Rectangle {
    id: rect
    width: 1080/4
    height: 1920/4
    color: "orange"
//    Image {
//        id: poem
//        anchors.fill: parent
//        source: "images/poem.jpg"
////        fillMode: Image.PreserveAspectFit  //等比缩放
////        clip: true
//    }
    SequentialAnimation on x {
        id: rectAnim
        running: true
        loops: Animation.Infinite
        NumberAnimation {
            from: 0
            to: 700
            duration: 5000
            easing.type: Easing.InOutQuad  //先加速后减速
        }
        NumberAnimation {
            from: 700
            to: 0
            duration: 5000
            easing.type: Easing.InOutQuad  //先加速后减速
        }

        PauseAnimation {
            duration: 1000
        }
    }
    Image {
        id: sword
        source: "images/sword.png"
        anchors.horizontalCenter: parent.horizontalCenter
        scale: 0.1
        y: 0
        opacity: 0.5
        rotation: 0
    }
    SequentialAnimation {
        id: swordAnim
        running: true
        loops: Animation.Infinite
        ParallelAnimation {
            ScaleAnimator {
                target: sword
                to: 1
                duration: 1500
            }
            OpacityAnimator {
                target: sword
                to:1
                duration: 1500
            }
            RotationAnimator {
                target: sword
                to: 360
                duration: 1500
            }
            NumberAnimation {
                target: sword
                properties: "y"
                to: rect.height - sword.height
                easing.type: Easing.OutBounce
                duration: 5000
            }
        }

        PauseAnimation {
            duration: 1000
        }

        ParallelAnimation {
            ScaleAnimator {
                target: sword
                to: 0.1
                duration: 1000
            }
            OpacityAnimator {
                target: img
                to: 0
                duration: 1000
            }
            RotationAnimator {
                target: sword
                to: 0
                duration: 1000
            }
            NumberAnimation {
                target: sword
                property: "y"
                to: 0
                easing.type: Easing.OutQuad
                duration: 1000
            }

        }
    }

}
