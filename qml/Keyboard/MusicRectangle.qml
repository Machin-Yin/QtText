import QtQuick 2.0

Rectangle {
//    property alias music: music

//    id: music
    width: 100
    height: 100
    radius: 6
    color: focus ? "orange" : "lightgray"
    scale: focus ? 1 : 0.8
    focus: true
    Keys.onUpPressed: music.y -= 10
    Keys.onDownPressed: music.y += 10
    Keys.onLeftPressed: music.x -= 10
    Keys.onRightPressed: music.x += 10
    Text {
        anchors.centerIn: parent
        color: parent.focus ? "yellow" : "gray"
        font.pointSize: 20
        text: qsTr("音乐")
    }
}
