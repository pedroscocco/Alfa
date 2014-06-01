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
        ]

        Image {
            anchors.fill: parent
            source: "resources/bg.jpg"

            // Para voltar ao Menu Inicial
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    quarto.visible = false;
                }
            }
        }
    }

}
