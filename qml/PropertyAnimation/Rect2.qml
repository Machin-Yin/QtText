import QtQuick 2.0

Rectangle {
    id: rect2
    width: 100
    height: 100
    color: "lightgreen"
    radius: 10
    Text {
        anchors.centerIn: parent
        font.pointSize: 12
        text: qsTr("信号处理")
    }
    MouseArea {
        anchors.fill: parent
        onClicked: PropertyAnimation {
            target: rect2
            property: "y"
            from: 30
            to: 300
            duration: 1500
            loops: 3
            easing.type: Easing.Linear
        }
    }
}
