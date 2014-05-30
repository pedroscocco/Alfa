import QtQuick 2.0
import QtQuick.Layouts 1.1

Item {
    id: atividade

    property string letra: "A"  // Qual e a letra
    property string imagem: "/" // Caminho para a imagem
    property int posLetra: 0    // Em qual quadrante da tela a letra vai aparecer
                                // Provavel que não vá usar

    Rectangle {
        anchors.fill: parent
        anchors.margins: 50
        color: Qt.rgba(0,0,0,0.5)

        // Fazer funcionar com imagens do aplicativo
        Image {
            anchors.fill: parent
            source: "Captura de Tela.png"
            //source: "http://images6.fanpop.com/image/photos/34900000/Cute-Panda-Bears-animals-34915025-2560-1600.jpg"

            GridLayout {
                id: grade
                anchors.fill: parent
                columns: 1
                rows: 2

                Image {
                   source: "Personagem.png"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                }

                Text {
                    text: qsTr("B")
                    color: "Red"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                }


            }
        }
    }

}