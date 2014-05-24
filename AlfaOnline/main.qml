import QtQuick 2.1
import QtQuick.Window 2.1

Window {
    id: window
    visible: true
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight

    Text {
        text: qsTr("AlfaOnline")
        font.pointSize: 34
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height/2 - parent.height/10
    }

    Text {
        text: qsTr("Estudar")
        font.pointSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height/2 + 1*parent.height/10

        MouseArea {
            anchors.fill: parent
            onClicked: {

            }
        }
    }

    Text {
        text: qsTr("Jogar")
        font.pointSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height/2 + 2*parent.height/10

        MouseArea {
            anchors.fill: parent
            onClicked: {

            }
        }
    }

    Text {
        text: qsTr("Quit")
        font.pointSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height/2 + 3*parent.height/10

        MouseArea {
            anchors.fill: parent
            onClicked: {
                Qt.quit();
            }
        }
    }
}
