import QtQuick 2.0

FocusScope {
    property alias label: label.text
    property alias text: input.text

    Row {
        spacing: 5
        Text {
            id: label
            text: qsTr("label")
        }
        Rectangle {
            width: 100
            height: 20
            color: "white"
            border.color: "gray"
            TextInput {
                id: input
                anchors.fill: parent
                anchors.margins: 4
                focus: true
                text: qsTr("请输入文本...")
            }
        }
    }
}

