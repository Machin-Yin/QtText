import QtQuick 2.0

Rectangle {

    width: 100
    height: 100
    radius: 6
    color: focus ? "blue" : "lightgray"
    scale: focus ? 1 : 0.8
    Keys.onUpPressed: movie.y -= 10
    Keys.onDownPressed: movie.y += 10
    Keys.onLeftPressed: movie.x -= 10
    Keys.onRightPressed: movie.x += 10
    Text {
        anchors.centerIn: parent
        color: parent.focus ? "purple" : "gray"
        font.pointSize: 20
        text: qsTr("影视")
    }
}

