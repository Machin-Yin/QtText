import QtQuick 2.0

Rectangle {
    id: rect3
    width: 100
    height: 100
    color: "aqua"
    radius: 10
    Text {
        anchors.centerIn: parent
        font.pointSize: 12
        text: qsTr("信号处理")
    }
    PropertyAnimation {
        id: animation
        target: rect3
        properties: "x,y"
        duration: 1000
        easing.type: Easing.InOutBack
    }
    MouseArea {
        anchors.fill: parent
        onClicked:  {
            animation.from = 20
            animation.to = 200
            animation.running = true
        }
    }
}
