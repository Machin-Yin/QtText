import QtQuick 2.0

Rectangle {

    width: 50
    height: 50
    color: "orange"
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        drag.target: parent
        drag.axis: Drag.XAndYAxis
        drag.minimumX: 0
        drag.minimumY: 0
        drag.maximumX: 360 - parent.width
        drag.maximumY: 360 - parent.height
        acceptedButtons: Qt.LeftButton|Qt.RightButton
        onClicked: {
            if(mouse.button == Qt.RightButton) {
                parent.color = "purple"
                parent.width -= 5
                parent.height -= 5
            }else if((mouse.button == Qt.LeftButton) && (mouse.modifiers & Qt.ShiftModifier)) {
                parent.color = "orange"
                parent.width = 50
                parent.height = 50
            }else {
                parent.color = "red"
                parent.width += 5
                parent.height += 5
            }
        }
    }
}
