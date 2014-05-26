import QtQuick 2.0
import QtQuick.Layouts 1.1

Item {
    id: letra

    property string letra: "A"  // Qual e a letra
    property string imagem: "/" // Caminho para a imagem
    property int posLetra: 0    // Em qual quadrante da tela a letra vai aparecer
                                // Provavel que não vá usar

    Rectangle {
        anchors.fill: parent
        anchors.margins: 50
        color: Qt.rgba(0,0,0,0.5)

        GridLayout {
            id: grade
            anchors.fill: parent
            columns: 2
            rows: 2


            Text {
                text: qsTr("A")
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
            }

            Text {
                text: qsTr("B")
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
            }

            Text {
                text: qsTr("C")
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
            }

            Text {
                text: qsTr("D")
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
            }
        }
    }

}
