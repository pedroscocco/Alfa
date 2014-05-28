import QtQuick 2.1
import QtQuick.Window 2.1
import QtQuick.Layouts 1.1

Window {
    id: window
    visible: true
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight


    // Exemplo pra chamar quarto
    Quarto {
        id: quarto
        anchors.fill: parent
        visible: false
    }

    // Exemplo pra chamar tela da letra é pra colocar em Quarto.qml depois
    Letra {
        id: letra
        anchors.fill: parent
        visible: false
    }

    // Colocar tudo abaixo em um rectangle com id menuInicial
    // Pensando.. seria melhor colocar num arquivo so dele?
    Rectangle {
        id: menuInicial
        anchors.fill: parent

        ColumnLayout {
            id: opcoes
            anchors.fill: parent

            Text {
                id: titulo
                text: qsTr("AlfaOnline")
                font.pointSize: 34
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                //anchors.horizontalCenter: parent.horizontalCenter
                //y: parent.height/2 - parent.height/10
            }

            Text {
                id: estudar
                text: qsTr("Estudar")
                font.pointSize: 24
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                //anchors.horizontalCenter: parent.horizontalCenter
                //y: parent.height/2 + 1*parent.height/10

                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        estudar.color = Qt.rgba(0.5, 0.5, 0.5, 1.0)
                    }
                    onReleased: {
                        estudar.color = Qt.rgba(0.0, 0.0, 0.0, 1.0)
                        quarto.visible = true;
                        menuInicial.visible = false
                    }
                }
            }

            Text {
                id: jogar
                text: qsTr("Jogar")
                font.pointSize: 24
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                //anchors.horizontalCenter: parent.horizontalCenter
                //y: parent.height/2 + 2*parent.height/10

                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        jogar.color = Qt.rgba(0.5, 0.5, 0.5, 1.0)

                    }
                    onReleased: {
                        jogar.color = Qt.rgba(0.0, 0.0, 0.0, 1.0)
                        letra.visible = true
                        menuInicial.visible = false
                    }
                }
            }

            Text {
                id: quit
                text: qsTr("Quit")
                font.pointSize: 24
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                //anchors.horizontalCenter: parent.horizontalCenter
                //y: parent.height/2 + 3*parent.height/10

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
    }
}
