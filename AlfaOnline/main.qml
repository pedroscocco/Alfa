import QtQuick 2.1
import QtQuick.Window 2.1

Window {
    id: window
    visible: true
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight

    Text {
        text: qsTr("AlfaOnline")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: 100
    }

    Text {
        text: qsTr("Quit")
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent
            onClicked: {
                Qt.quit();
            }
        }
    }
}
