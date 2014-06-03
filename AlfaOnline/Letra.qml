import QtQuick 2.1
import QtQuick.Layouts 1.1
import "resources"

Item {
    id: letra

    property string letra: "A"  // Qual e a letra
    property string imagem: "resources/LetterA.jpg" // Caminho para a imagem

    Rectangle {
        anchors.fill: parent
        anchors.margins: 100
        color: Qt.rgba(0,0,0,0.5)

        // Fazer funcionar com imagens do aplicativo
        Image {
            anchors.fill: parent
            source: letra.imagem
        }
        Image {
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.bottomMargin: 10
            anchors.rightMargin: 10
            source: "resources/Arrow.png"
            MouseArea {
                anchors.fill: parent
                onPressed: letra.visible = false
            }
        }
    }

}
