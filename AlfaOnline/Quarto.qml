import QtQuick 2.1
import "resources"


Item {
    id: quarto
    visible: true

    Rectangle {
        id: telaLetras
        width: parent.width
        height: parent.height

        property int letraSelecionada: 0
        property int letrasVistas: 0
/*      Ignorando por hora
        property list<Item> letras: [
            Letra {
                id: letraA
                anchors.fill: parent
                visible: true
            },
            Letra {

            },
            Letra {

            },
            Letra {

            },
            Letra {

            }
        ]*/

        Image {
            anchors.fill: parent
            source: "resources/BackgroundRoom.jpg"


        }

        Image {
            source: "resources/Arrow.png"
            anchors.right: parent.right
            y: 3*parent.height/4 - height/2
            // Para voltar ao Menu Inicial
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    quarto.visible = false;
                }
            }
        }

        Image {
            source: "resources/AirplaneToRoom.png"
            x: 635
            y: 0
            state: "NEW"
            // Para voltar ao Menu Inicial
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    parent.source = "resources/AirplaneToRoomClicked.png"
                    letra.letra = "A"
                    letra.imagem = "resources/LetterA.jpg"
                    letra.visible = true
                    if(state == "NEW") {
                        state = "PRESSED"
                        telaLetras.letrasVistas += 1
                        console.log("vistas: ",telaLetras.letrasVistas)
                    }
                }
            }
        }

        Image {
            source: "resources/BallToRoom.png"
            x: 635
            y: 400
            state: "NEW"
            // Para voltar ao Menu Inicial
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    parent.source = "resources/BallToRoomClicked.png"
                    parent.y = 402
                    letra.letra = "B"
                    letra.imagem = "resources/LetterB.jpg"
                    letra.visible = true
                    if(state == "NEW") {
                        state = "PRESSED"
                        telaLetras.letrasVistas += 1
                        console.log("vistas: ",telaLetras.letrasVistas)
                    }
                }
            }
        }

        Letra {
            visible: false
        }
    }

}
