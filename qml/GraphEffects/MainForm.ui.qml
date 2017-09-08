import QtQuick 2.4

Rectangle {
    property alias mouseArea: mouseArea

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
    MyGraph {}
}
