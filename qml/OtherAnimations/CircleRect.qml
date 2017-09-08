import QtQuick 2.0

Rectangle {
    width: 100
    height: 100

    ColorAnimation on color{
        from: "yellow"
        to: "red"
        duration: 10000
        loops: Animation.Infinite
    }
    RotationAnimation on rotation {
        from: 0
        to: 360
        duration: 10000
        direction: RotationAnimation.Clockwise
        loops: Animation.Infinite
    }
    NumberAnimation on radius {
        from: 0
        to: 60   // 50变成圆后 以圆形持续一段时间
        duration: 10000
        loops: Animation.Infinite
    }
    PropertyAnimation on x {
        from: 50
        to: 500
        duration: 10000
        loops: Animation.Infinite
        easing.type: Easing.InOutQuad
    }

}
