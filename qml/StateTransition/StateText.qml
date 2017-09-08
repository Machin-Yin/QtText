import QtQuick 2.0

Text {
   id: stext
   color: "grey"
   font.family: "Helvetica"
   font.pointSize: 24
   font.bold: true
   MouseArea {
        id: mArea
        anchors.fill: parent
   }

   states: [
        State {
            name: "highlight"
            when: mArea.pressed
            PropertyChanges {
                target: stext
                color: "red"
                font.pointSize: 100
                style: Text.Raised
                styleColor: "red"
            }
       }
   ]
   transitions: [
       Transition {
           PropertyAnimation {
                duration: 10000
           }
       }
   ]
}
