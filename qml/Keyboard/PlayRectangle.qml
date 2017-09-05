import QtQuick 2.0

Rectangle {
    width: 100
    height: 100
    radius: 6
    color: focus ? "green" : "lightgray"
    scale: focus ? 1 : 0.8
    Keys.onUpPressed: play.y -= 10
    Keys.onDownPressed: play.y += 10
    Keys.onLeftPressed: play.x -= 10
    Keys.onRightPressed: play.x += 10
    Text {
        anchors.centerIn: parent
        color: parent.focus ? "yellow" : "gray"
        font.pointSize: 20
        text: qsTr("游戏")
    }
}
