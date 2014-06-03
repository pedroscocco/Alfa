import QtQuick 2.1
import QtQuick.Layouts 1.1
import "resources"

Item {
    id: sugestao

    Rectangle {
        id: popup
        anchors.fill: parent
        anchors.centerIn: parent
        anchors.margins: 100
        color: Qt.rgba(1,1,1,0.9)

        // Fazer funcionar com imagens do aplicativo
//        Image {
//            anchors.fill: parent
//            source: "resources/BackgroundTelaInicial.jpg"
//        }

        ColumnLayout {
            anchors.fill: parent

            Rectangle {
                height: popup.height/2
                width: popup.width
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                Image {
                    anchors.fill: parent
                    source: "resources/LogoTelaInicial.png"
                }
            }

            RowLayout {
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                Image {
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                    source: "resources/PlayButton.png"
                    MouseArea {
                        anchors.fill: parent
                        onPressed: {
                            parent.source = "resources/PlayButtonClicked.png"
                        }
                        onReleased: {
                            parent.source = "resources/PlayButton.png"
                            atividade.visible = true;
                        }
                    }
                }
                Image {
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                    source: "resources/Quit.png"
                    MouseArea {
                        anchors.fill: parent
                        onPressed: {
                            sugestao.visible = false
                            quarto.focus = true
                        }
                    }
                }
            }
        }
    }

}
