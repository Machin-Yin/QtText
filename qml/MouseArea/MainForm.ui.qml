import QtQuick 2.4

Rectangle {

    width: 360
    height: 360

    Rect {
        x: 25
        y: 25
        opacity: (360.0 - x/2 - y/2)/360
    }
}
