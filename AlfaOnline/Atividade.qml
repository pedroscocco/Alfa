import QtQuick 2.0
import QtQuick.Layouts 1.1
import "resources"

Item {
    id: atividade
    state: "PARADO"
    property string letra: "A"  // Qual e a letra
    property string imagem: "/" // Caminho para a imagem
    property int posLetra: 0    // Em qual quadrante da tela a letra vai aparecer
                                // Provavel que não vá usar

    property int cont: 0

    ListModel {
        id: listaLetras
    }


    Timer {
        id: timer
        interval: 5000
        running: false
        repeat: true
        onTriggered: tick()
    }

    onStateChanged: {
        if (state == "INICIADO") {
            timer.running = true;
            var componente = Qt.createComponent("LetraVoadora.qml")
            componente.createObject(backgroundAtividade,{ "id": "letra" + atividade.cont, "x": -100, "y": 90})
            listaLetras.append(componente)
        }
    }

    function tick() {
        if (atividade.state != "PARADO") {
            var componente = Qt.createComponent("LetraVoadora.qml")
            componente.createObject(backgroundAtividade,{ "x": -100, "y": 90})
            listaLetras.append(componente)

            //Precisa conseguir pegar as instancias dos objetos em especial o x e y
            console.log(listaLetras.get(1).letraVoadora.x)

            if (listaLetras.count > 0) {
                for (var i = 0; i < listaLetras; i++) {
                    colisao(i)
                    console.log(i)
                }
            }

        }
    }

    // Precisa rever a regra da colisao dentro do if
    function colisao (index) {
        console.log(index)
        console.log(listaLetras.get(index).x);
        if(listaLetras.get(index).x >= personagem.x-200 && listaLetras.get(index).x <= personagem.x+200 && listaLetras.get(index).y <= personagem.y + 2000) {
            console.log("HIT");
        }
    }

    Rectangle {
        anchors.fill: parent
        color: Qt.rgba(0,0,0,0.5)
        width: parent.width
        height: parent.height
        // Fazer funcionar com imagens do aplicativo

        Image {
            id: backgroundAtividade
            anchors.fill: parent
            source: "resources/BackgroundPlay.jpg"
			//source: "http://images6.fanpop.com/image/photos/34900000/Cute-Panda-Bears-animals-34915025-2560-1600.jpg"

            GridLayout {
                id: grade
                anchors.fill: parent
                columns: 1
                rows: 3
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
            duration: 500
            easing.type: Easing.OutQuad
            onStopped: animatePersonagemToBottom.start()
        }

        NumberAnimation {
            id: animatePersonagemToBottom
            target: personagem
            property: "y"
            from: personagem.y
            to: personagem.y + 150
            duration: 500
            easing.type: Easing.InQuad
        }
    }
}


