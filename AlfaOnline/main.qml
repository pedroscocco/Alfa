import QtQuick 2.1
import QtQuick.Window 2.1
import QtQuick.Layouts 1.1

Window {
    id: window
    visible: true
    width: 1024
    height: 600


    // Colocar tudo abaixo em um rectangle com id menuInicial
    // Pensando.. seria melhor colocar num arquivo so dele?
    Rectangle {
        id: menuInicial
        anchors.fill: parent

        ColumnLayout {
            id: opcoes
            anchors.fill: parent

            Image {
                id: titulo
               source:"LogoTelaInicial.png"
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                //anchors.horizontalCenter: parent.horizontalCenter
                //y: parent.height/2 - parent.height/10
            }

            GridLayout {
                id: estudar
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                columns: 2

                Text {
                    id: estudar_texto
                    text: qsTr("Estudar")
                    font.pointSize: 24
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                    //anchors.horizontalCenter: parent.horizontalCenter
                    //y: parent.height/2 + 1*parent.height/10
                }

                Image {
                    id: estudar_imagem
                    source: "livro.jpg"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                    sourceSize.width: 100
                    sourceSize.height: 100
                }

                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        estudar_texto.color = Qt.rgba(0.5, 0.5, 0.5, 1.0)
                    }
                    onReleased: {
                        estudar_texto.color = Qt.rgba(0.0, 0.0, 0.0, 1.0)
                        quarto.visible = true;
                        menuInicial.visible = false
                    }
                }
            }

            GridLayout {
                id: jogar
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                columns: 2
                rows: 1

                Text {
                    id: jogar_texto
                    text: qsTr("Jogar")
                    font.pointSize: 24
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                    //anchors.horizontalCenter: parent.horizontalCenter
                    //y: parent.height/2 + 2*parent.height/10
                }

                Image {
                    id: jogar_imagem
                    source: "Personagem.png"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                    sourceSize.width: 100
                    sourceSize.height: 100
                }
                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        jogar_texto.color = Qt.rgba(0.5, 0.5, 0.5, 1.0)

                    }
                    onReleased: {
                        jogar_texto.color = Qt.rgba(0.0, 0.0, 0.0, 1.0)
                        atividade.visible = true
                        menuInicial.visible = false
                        // Para pop-up ainda mostrando a tela QML usa a ordem dos objetos como Z
                        //menuInicial.visible = false
                    }
                }
            }

            GridLayout {
                id: quit
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                columns: 2
                rows: 1

                Text {
                    id: quit_texto
                    text: qsTr("Quit")
                    font.pointSize: 24
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                    //anchors.horizontalCenter: parent.horizontalCenter
                    //y: parent.height/2 + 3*parent.height/10
                }
                Image {
                    id: quit_imagem
                    source: "Arrow.png"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                    sourceSize.width: 100
                    sourceSize.height: 100
                }
                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        quit_texto.color = Qt.rgba(0.5,0.5,0.5,1)
                    }
                    onReleased: {
                        quit_texto.color = Qt.rgba(0.0, 0.0, 0.0, 1.0)
                        Qt.quit();
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
