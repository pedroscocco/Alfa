import QtQuick 2.1
import QtQuick.Layouts 1.1
import "resources"

Item {
    id: letra

    property string letra: "A"  // Qual e a letra
    property string imagem: "resources/LetterA.jpg" // Caminho para a imagem
    property int posLetra: 0    // Em qual quadrante da tela a letra vai aparecer
                                // Provavel que não vá usar

    Rectangle {
        anchors.fill: parent
        anchors.margins: 100
        color: Qt.rgba(0,0,0,0.5)
        property string imagem: parent.imagem

        // Fazer funcionar com imagens do aplicativo
        Image {
            anchors.fill: parent
            source: parent.imagem

            /*
            GridLayout {
                id: grade
                anchors.fill: parent
                columns: 2
                rows: 2

                Text {
                    text: qsTr("A")
                    color: "Red"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                }

                Text {
                    text: qsTr("B")
                    color: "Red"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                }

                Text {
                    text: qsTr("C")
                    color: "Red"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                }

                Text {
                    text: qsTr("D")
                    color: "Red"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                }
            }
            */
        }
        Image {
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.bottomMargin: 10
            anchors.rightMargin: 10
            source: "resources/Arrow.png"
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    letra.visible = false;
                    quarto.focus = true
                }
            }
        }
    }

}
