import QtQuick 2.0
import QtQuick.Layouts 1.3

Rectangle {
    color : Qt.rgba((255/255),(235/255),(59/255),0.36)
    anchors.fill : parent
    anchors.centerIn: parent
    GridLayout {
        anchors.centerIn: parent
        columns : 1
        Demo {
            id : demo3
            Rectangle {
                id : outerRect
                width : 200
                height : 200
                border.color : "black"
                border.width : 1
                /*
                color : "red"
                opacity : 0.5
                */
                // Instead of using "red" & opacity =0.5, we will use rgb for red, with Alpha set to 0.5:
                color : Qt.rgba((255/255),(0/255),(0/255),0.5)
                Rectangle {
                    id : innerRect
                    width : parent.width * 0.8
                    height : parent.height * 0.8
                    anchors.centerIn: parent
                    /*
                    color : "green"
                    opacity: 1
                    */
                    // Equivalent to above, but using RGBA:
                    color : Qt.rgba((0/255),(128/255),(0/255),1)
                    border.color : "black"
                    border.width : 1
                    Text {
                        text: qsTr("Child")
                        anchors.centerIn: parent
                    }
                }
            }
        }
        Demo {
            id : demo4
            Rectangle {
                id : rectA
                width : 200
                height : 200
                color : Qt.rgba((255/255),(0/255),(0/255),0.5)
                border.color : "black"
                border.width : 1
                Rectangle {
                    id : rectB
                    width : 200
                    height : 200
                    x: 20
                    y: 20
                    color : Qt.rgba((0/255),(128/255),(0/255),1)
                    border.color : "black"
                    border.width : 1
                    Text {
                        text: qsTr("Child")
                        anchors.centerIn: parent
                    }
                }
            }
        }
    }
}
