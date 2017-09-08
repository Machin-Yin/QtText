import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("动画元素")

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            rect4.x = mouseArea.mouseX - 50;
            rect4.y = mouseArea.mouseY - 50;
        }
    }
}
