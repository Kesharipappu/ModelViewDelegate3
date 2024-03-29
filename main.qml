import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 640
        height: 480
        color: "lightGray"

        Column {
            spacing: 2
            Repeater {
                model: ListModel {
                    ListElement { name: "Mercury"; surfaceColor: "gray" }
                    ListElement { name: "Venus"; surfaceColor: "yellow" }
                    ListElement { name: "Earth"; surfaceColor: "blue" }
                    ListElement { name: "Mars"; surfaceColor: "orange" }
                    ListElement { name: "Jupiter"; surfaceColor: "orange" }
                    ListElement { name: "Saturn"; surfaceColor: "yellow" }
                    ListElement { name: "Uranus"; surfaceColor: "lightBlue" }
                    ListElement { name: "Neptune"; surfaceColor: "light" }
                }

                delegate: Item {
                    width: 120
                    height: 32

                    Row {
                        spacing: 4

                        Rectangle {
                            width: 16
                            height: 16
                            radius: 8
                            color: surfaceColor
                        }

                        Rectangle {
                            width: 120
                            height: 32
                            radius: 3
                            color: surfaceColor

                            Text {
                                anchors.centerIn: parent
                                text: name
                            }
                        }
                    }
                }
            }
        }
    }
}
