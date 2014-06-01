import QtQuick 2.0
import QtQuick.Layouts 1.1
import "resources"

Item {
    id: atividade

    property string letra: "A"  // Qual e a letra
    property string imagem: "/" // Caminho para a imagem
    property int posLetra: 0    // Em qual quadrante da tela a letra vai aparecer
                                // Provavel que não vá usar

    Rectangle {
        anchors.fill: parent
        color: Qt.rgba(0,0,0,0.5)
        width: parent.width
        height: parent.height
        // Fazer funcionar com imagens do aplicativo

        Image {
            anchors.fill: parent
            source: "resources/bg.jpg"
            //source: "http://images6.fanpop.com/image/photos/34900000/Cute-Panda-Bears-animals-34915025-2560-1600.jpg"

            GridLayout {
                id: grade
                anchors.fill: parent
                columns: 1
                rows: 2



                    Row {

                        Image {
                            id: u
                            y: 100
                            source:"resources/B.png"
                            NumberAnimation on x { from:250; to: 1274; duration: 16000; loops: Animation.Infinite }
                            SequentialAnimation on y {
                                loops: Animation.Infinite
                                NumberAnimation { from: y + 50; to: y - 50; duration: 1600; easing.type: Easing.InOutBack }
                                NumberAnimation { from: y - 50; to: y + 50; duration: 1600; easing.type: Easing.InOutBack }
                            }


                        }

                        Image {
                            id: a
                            y: 0
                            source:"resources/A.png"


                            NumberAnimation on x { from: 0; to: 1024; duration: 16000; loops: Animation.Infinite }
                            SequentialAnimation on y {
                                loops: Animation.Infinite
                                NumberAnimation { from: y - 50; to: y + 50; duration: 1600; easing.type: Easing.InOutBack }
                                NumberAnimation { from: y + 50; to: y - 50; duration: 1600; easing.type: Easing.InOutBack }
                            }
                        }


                    }

                    Image {
                            id: personagem
                            y: 0
                            Layout.alignment: (Qt.AlignBottom | Qt.AlignHCenter)
                            source:"resources/Personagem.png"

                    }


            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed:  animatePersonagem.start()
        }

        NumberAnimation {
            id: animatePersonagem
            target: personagem
            property: "y"
            from:personagem.y
            to: personagem.y - 150
            duration: 1600
            easing.type: Easing.OutQuad
            onStopped: animatePersonagemToBottom.start()
        }

        NumberAnimation {
            id: animatePersonagemToBottom
            target: personagem
            property: "y"
            from: personagem.y
            to: personagem.y + 150
            duration: 1600
            easing.type: Easing.InQuad
        }
    }
}


