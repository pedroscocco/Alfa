import QtQuick 2.1
import "resources"


Item {
    id: quarto
    visible: true
    focus: true

    Rectangle {
        id: telaLetras
        width: parent.width
        height: parent.height

        property int letraSelecionada: 0
        property int letrasVistas: 0

        onLetrasVistasChanged: console.log("OLA?")//telaLetras.letrasVistas)//mostrarPopup()

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
            id: airplane
            source: "resources/AirplaneToRoom.png"
            anchors.top: parent.top
            anchors.right: parent.right
            state: "NEW"
            // Para voltar ao Menu Inicial
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if(quarto.focus) {
                        quarto.focus = false
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
        }

        Image {
            source: "resources/BallToRoom.png"
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            state: "NEW"
            // Para voltar ao Menu Inicial
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if(quarto.focus) {
                        quarto.focus = false
                        parent.source = "resources/BallToRoomClicked.png"
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
        }

        Image {
            source: "resources/ChairToRoom.png"
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            state: "NEW"
            // Para voltar ao Menu Inicial
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if(quarto.focus) {
                        quarto.focus = false
                        parent.source = "resources/ChairToRoomClicked.png"
                        letra.letra = "C"
                        letra.imagem = "resources/LetterC.jpg"
                        letra.visible = true
                        if(state == "NEW") {
                            state = "PRESSED"
                            telaLetras.letrasVistas += 1
                            console.log("vistas: ",telaLetras.letrasVistas)
                        }
                    }
                }
            }
        }

        Image {
            source: "resources/DiceToRoom.png"
            anchors.top: parent.top
            anchors.left: parent.left
            state: "NEW"
            // Para voltar ao Menu Inicial
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if(quarto.focus) {
                        quarto.focus = false
                        parent.source = "resources/DiceToRoomClicked.png"
                        letra.letra = "D"
                        letra.imagem = "resources/LetterD.jpg"
                        letra.visible = true
                        if(state == "NEW") {
                            state = "PRESSED"
                            telaLetras.letrasVistas += 1
                            console.log("vistas: ",telaLetras.letrasVistas)
                        }
                    }
                }
            }
        }

        Image {
            source: "resources/Quit.png"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.margins: 10
            // Para voltar ao Menu Inicial
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if(quarto.focus) {
                        quarto.visible = false;
                    }
                }
            }
        }

        Letra {
            visible: false
        }

        Sugestao {
            anchors.fill: parent
            visible: false
        }

        function mostrarPopup() {
            telaLetras.letrasVistas += 1
            if (telaLetras.letrasVistas > 0) {
                Sugestao.visible = true
                Quarto.focus = false
                console.log("LOG LOG LOG LET's KEEP LOGGING!")
                //telaLetras.letrasVistas = 0
            }
        }

    }

}
