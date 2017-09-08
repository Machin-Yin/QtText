import QtQuick 2.0

Rectangle {
    id: rect
    width: 200
    height: 200
    gradient: Gradient {
        GradientStop { position: 0.0; color: "yellow" }
        GradientStop { position: 0.33; color: "blue" }
        GradientStop { position: 1.0; color: "orange" }
    }

    function getRandomNumber() {
        return Math.random() * 360
    }

    Behavior on rotation {
        RotationAnimation {
            direction: RotationAnimation.Clockwise
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: rect.rotation = getRandomNumber()
    }

}
