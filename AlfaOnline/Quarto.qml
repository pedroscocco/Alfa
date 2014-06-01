import QtQuick 2.1
import "resources"


Item {
    id: janelaQuarto
    visible: true

    Rectangle {
        id: telaLetras
        width: parent.width
        height: parent.height
        color: "black"

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
            source: "resources/bg.jpg"
        }
    }

}
