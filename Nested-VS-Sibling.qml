import QtQuick 2.0
import QtQuick.Layouts 1.3

Rectangle {
    color : Qt.rgba((255/255),(235/255),(59/255),0.36)
    anchors.fill: parent
    anchors.centerIn: parent
    GridLayout {
        anchors.centerIn: parent
        columns : 2
        Demo {
            id : demo1A
            Rectangle {
                id : outerRect
                width : 200
                height : 200
                color : "red"
                border.color : "black"
                border.width : 1
                opacity : 0.5
                Rectangle {
                    id : innerRect
                    width : parent.width * 0.8
                    height : parent.height * 0.8
                    anchors.centerIn: parent
                    color : "green"
                    border.color : "black"
                    border.width : 1
                    opacity: 1
                    Text {
                        text: qsTr("Child")
                        anchors.centerIn: parent
                    }
                }
            }
        }
        Demo {
            id : demo1B
            Rectangle {
                id : outerRectB
                width : 200
                height : 200
                color : "red"
                border.color : "black"
                border.width : 1
                opacity : 0.5
            }
            Rectangle {
                id : innerRectB
                width : outerRectB.width * 0.8
                height : outerRectB.width * 0.8
                y : (Math.round(outerRectB.width * 0.1))
                x : (Math.round(outerRectB.width * 0.1))
                border.color : "black"
                border.width : 1
                opacity : 1
                color : "green"
                Text {
                    text: qsTr("Sibling")
                    anchors.centerIn: parent
                }
            }
        }
        Demo {
            id : demo2A
            Rectangle {
                id : rectA
                width : 200
                height : 200
                color : "red"
                border.color : "black"
                border.width : 1
                opacity : 0.5
                Rectangle {
                    id : rectB
                    width : 200
                    height : 200
                    x: 20
                    y: 20
                    color : "green"
                    border.color : "black"
                    border.width : 1
                    opacity: 1
                    Text {
                        text: qsTr("Child")
                        anchors.centerIn: parent
                    }
                }
            }
        }

        Demo {
            id : demo2B
            Rectangle {
                id : rectC
                width : 200
                height : 200
                color : "red"
                border.color : "black"
                border.width : 1
                opacity : 0.5
            }
            Rectangle {
                id : rectD
                width : 200
                height : 200
                x: 20
                y: 20
                border.color : "black"
                border.width : 1
                opacity : 1
                color : "green"
                Text {
                    text: qsTr("Sibling")
                    anchors.centerIn: parent
                }
            }
        }
    }
}
