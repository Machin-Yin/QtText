import QtQuick 2.0

Rectangle {
    width: 100
    height: 100
    color: "lightblue"
    radius: 10

    Text {
        anchors.centerIn: parent
        font.pointSize: 12
        text: qsTr("行为动画")
    }

    Behavior on x {
        PropertyAnimation {
            duration: 1000
            easing.type: Easing.InOutBack
        }
    }

    Behavior on y {
        PropertyAnimation {
            duration: 1000
            easing.type: Easing.InOutBack
        }
    }

}

