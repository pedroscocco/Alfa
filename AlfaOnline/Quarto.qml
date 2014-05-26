import QtQuick 2.0
import QtQuick.Window 2.1

//
// TEM QUE MUDAR DE WINDOW PRA ITEM!!!!
//

Window {
    id: window
    visible: true
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight

    Rectangle {
        id: telaLetras
        width: parent.width
        height: parent.height
        color: "black"

        property int letraSelecionada: 0

        property list<Item> letras: [
        Letra {

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
    }

}
