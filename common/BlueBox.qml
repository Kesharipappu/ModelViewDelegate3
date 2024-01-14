import QtQuick 2.15

Rectangle {
    property string name
    property color surfaceColor
    width: 100
    height: 32
    color: "blue"

    Text {
        anchors.centerIn: parent
    }
}
