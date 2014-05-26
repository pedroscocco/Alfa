import QtQuick 2.0

Item {
    id: letra

    property string letra: "A"  // Qual e a letra
    property string imagem: "/" // Caminho para a imagem
    property int posLetra: 0    // Em qual quadrante da tela a letra vai aparecer

    Rectangle {
        anchors.fill: parent
        anchors.margins: 50
        color: Qt.rgba(0,0,0,0.5)
    }

}
