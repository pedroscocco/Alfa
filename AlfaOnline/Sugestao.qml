import QtQuick 2.1
import QtQuick.Layouts 1.1
import "resources"

Item {
    id: sugestao

    Rectangle {
        id: popup
        anchors.centerIn: parent
        anchors.margins: 150
        color: Qt.rgba(0,0,0,0.5)

        // Fazer funcionar com imagens do aplicativo
        Image {
            anchors.fill: parent
            source: "resources/BackgroundTelaInicial.jpg"
        }

        ColumnLayout {
            anchors.fill: parent

            /*
            Image {
                source: "resources/LogoTelaInicial.png"
                height: 10
                width: 10
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
            }*/
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
                        }
                    }
                }
                Image {
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                    source: "resources/Quit.png"
                    MouseArea {
                        anchors.fill: parent
                        onPressed: {
                            sugestao.visible = false;
                            quarto.focus = true
                        }
                    }
                }
            }
        }
    }

}
