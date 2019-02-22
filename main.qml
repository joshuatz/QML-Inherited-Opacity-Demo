import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

Window {
    visible: true
    width: 640
    height: 540
    title: qsTr("Opacity Demo")

    TabBar {
        id : tabBar
        width : parent.width
        height : 50
        TabButton {
            text : qsTr("Nested VS Sibling")
        }
        TabButton {
            text : qsTr("RGBA Solution")
        }
    }

    StackLayout {
        width : parent.width
        height : (parent.height - tabBar.height)
        anchors.top: tabBar.bottom
        currentIndex: tabBar.currentIndex
        Item {
            id : nestedVsSibling
            anchors.fill : parent
            Loader {
                anchors.fill : parent
                source: "Nested-VS-Sibling.qml"
            }
        }
        Item {
            id : rgbaSolution
            anchors.fill : parent
            Loader {
                anchors.fill : parent
                source: "RGBA.qml"
            }
        }
    }


}
