import QtQuick 2.0

Rectangle {
    id: btn
    width: 100
    height: 62
    color: "red"
    border.color: "yellow"
    border.width: 2
    Text {
        id: label
        text: qsTr("开始")
        anchors.centerIn: parent
        font.pointSize: 16
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if(label.font.pointSize == 16)
            {
                label.text = "按钮已按下！"
                label.font.pointSize = 11
                btn.color = "orange"
                btn.border.color = "crayon"
                chgRect1.anchors.left = rRect.left
                chgRect1.anchors.right = rRect.right
                chgRect1.anchors.leftMargin = 0

                chgRect2.anchors.left = bRect.left
                chgRect2.anchors.right = bRect.undefined
                chgRect2.anchors.leftMargin = 0


            }
            else
            {
                label.text = "开始！"
                label.font.pointSize = 16
                btn.color = "red"
                btn.border.color = "yellow"
                chgRect1.anchors.left = bRect.left
                chgRect1.anchors.right = bRect.right
                chgRect1.anchors.rightMargin = 0

                chgRect2.anchors.left = rRect.left
                chgRect2.anchors.right = rRect.right

            }

        }
    }
}
