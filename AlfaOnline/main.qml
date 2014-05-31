import QtQuick 2.1
import QtQuick.Window 2.1
import QtQuick.Layouts 1.1
import "resources"

Window {
    id: window
    visible: true
    width: 1280
    height: 800


    // Colocar tudo abaixo em um rectangle com id menuInicial
    // Pensando.. seria melhor colocar num arquivo so dele?
    Rectangle {
        id: menuInicial
        anchors.fill: parent

        Image {
            id: bg_menu
            anchors.fill: parent
            source: "resources/BackgroundTelaInicial.jpg"
        }

        ColumnLayout {
            id: objetos
            anchors.fill: parent

            Image {
                id: titulo
               source:"resources/LogoTelaInicial.png"
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                //anchors.horizontalCenter: parent.horizontalCenter
                //y: parent.height/2 - parent.height/10
            }

            RowLayout {
            id: opcoes
            Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)

                Image {
                    id: estudar
                    source: "resources/StudyButton.png"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                    MouseArea {
                        anchors.fill: parent
                        onPressed: {
                            estudar.source = "resources/StudyButtonClicked.png"
                        }
                        onReleased: {
                            quarto.visible = true;
                            menuInicial.visible = false
                            estudar.source = "resources/StudyButton.png"
                        }
                    }
                }

                Image {
                    id: jogar
                    source: "resources/PlayButton.png"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)

                    MouseArea {
                        anchors.fill: parent
                        onPressed: {
                            jogar.source = "resources/PlayButtonClicked.png"
                        }
                        onReleased: {
                            atividade.visible = true
                            menuInicial.visible = false
                            jogar.source = "resources/PlayButton.png"
                        }
                    }
                }

                Image {
                    id: sair
                    source: "resources/QuitButton.png"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)

                    MouseArea {
                        anchors.fill: parent
                        onPressed: {
                            sair.source = "resources/QuitButtonClicked.png"
                        }
                        onReleased: {
                            sair.source = "resources/QuitButton.png"
                            Qt.quit();
                        }
                    }
                }
            }
        }
    }

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

    // Exemplo pra chamar tela da letra é pra colocar em Quarto.qml depois
   Atividade {
        id: atividade
        anchors.fill: parent
        visible: false
    }
}
