import QtQuick 2.4

Rectangle {

    id: rec
    width: 360
    height: 360

    Row {
        x: 50
        y: 50
        spacing: 30
        MusicRectangle {
            id: music
            KeyNavigation.tab: play
        }
        PlayRectangle {
            id: play
            KeyNavigation.tab: movie
        }
        MovieRectangle {
            id: movie
            KeyNavigation.tab: music
        }
    }
}
