import QtQuick 2.0

Rectangle {
    width: 100
    height: 100
    color: "orange"
    radius: 10
    Text {
        anchors.centerIn: parent
        font.pointSize: 12
        text: qsTr("属性值源")
    }
    PropertyAnimation on x {
        from: 50
        to: 500
        duration: 4000
        loops: Animation.Infinite
        easing.type: Easing.OutBounce
    }
}
