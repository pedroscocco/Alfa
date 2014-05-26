import QtQuick 2.1
import QtQuick.Window 2.1

Window {
    id: window
    visible: true
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight


    // Exemplo pra chamar quarto
    Quarto {
        id: quarto
        //anchors.fill: parent
        visible: false
    }

    // Exemplo pra chamar tela da letra é pra colocar em Quarto.qml depois
    Letra {
        id: letra
        anchors.fill: parent
        visible: false
    }

    // Colocar tudo abaixo em um rectangle com id menuInicial
    Text {
        id: titulo
        text: qsTr("AlfaOnline")
        font.pointSize: 34
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height/2 - parent.height/10
    }

    Text {
        id: estudar
        text: qsTr("Estudar")
        font.pointSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height/2 + 1*parent.height/10

        MouseArea {
            anchors.fill: parent
            onPressed: {
                estudar.color = Qt.rgba(0.5, 0.5, 0.5, 1.0)
            }
            onReleased: {
                estudar.color = Qt.rgba(0.0, 0.0, 0.0, 1.0)
                quarto.visible = true;
            }
        }
    }

    Text {
        id: jogar
        text: qsTr("Jogar")
        font.pointSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height/2 + 2*parent.height/10

        MouseArea {
            anchors.fill: parent
            onPressed: {
                jogar.color = Qt.rgba(0.5, 0.5, 0.5, 1.0)

            }
            onReleased: {
                jogar.color = Qt.rgba(0.0, 0.0, 0.0, 1.0)
                letra.visible = true
            }
        }
    }

    Text {
        id: quit
        text: qsTr("Quit")
        font.pointSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height/2 + 3*parent.height/10

        MouseArea {
            anchors.fill: parent
            onPressed: {
                quit.color = Qt.rgba(0.5,0.5,0.5,1)
            }
            onReleased: {
                quit.color = Qt.rgba(0.0, 0.0, 0.0, 1.0)
                Qt.quit();
            }
        }
    }
}
