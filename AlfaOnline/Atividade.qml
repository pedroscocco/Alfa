import QtQuick 2.0
import QtQuick.Layouts 1.1
import "resources"
import "mylogic.js" as Logic
Item {
    id: atividade
    state: "PARADO"
    property string letra: "A"  // Qual e a letra
    property string imagem: "/" // Caminho para a imagem
    property int posLetra: 0    // Em qual quadrante da tela a letra vai aparecer
                                // Provavel que não vá usar

    property int cont: 0
    property int letrasUsadas: 1
    property int letrasVoadorasUsadas: 1
    property int contLetra: 0
    property int contHeader: 0

    ListModel {
        id: listaLetras
    }

    ListView {
        id: verListaLetras
        model: listaLetras
        delegate: Item {
            Image {
                id: letraVoadora
                x: x
                y: y
            }
        }
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
            escolherLetra()
        }
    }

    function tick() {
        if (atividade.state != "PARADO") {
            escolherLetra()
            //Precisa conseguir pegar as instancias dos objetos em especial o x e y
            console.log(listaLetras.get(1).source)
            //console.log(verListaLetras.indexAt(-100, 180))
            console.log(listaLetras.count)

            if (listaLetras.count > 0) {
                for (var i = 0; i < listaLetras; i++) {

                    console.log(i)
                }
            }

        }
    }



    function escolherLetra() {
        var alfa = letraAleatoria()
        var componente = Qt.createComponent("LetraVoadora.qml")
        console.log("ALFA: " + alfa)
        if (letrasVoadorasUsadas != 1) {
            if (letrasVoadorasUsadas % alfa != 0) {
                switch(alfa) {
                case 3: {
                    componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                    listaLetras.append(componente)
                    letrasVoadorasUsadas = letrasVoadorasUsadas * alfa
                    contLetra++
                }
                break;
                case 5: {
                    componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                    listaLetras.append(componente)
                    letrasVoadorasUsadas = letrasVoadorasUsadas * alfa
                    contLetra++
                }
                break;
                case 7: {
                    componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                    listaLetras.append(componente)
                    letrasVoadorasUsadas = letrasVoadorasUsadas * alfa
                    contLetra++
                }
                break;
                case 11: {
                    componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                    listaLetras.append(componente)
                    letrasVoadorasUsadas = letrasVoadorasUsadas * alfa
                    contLetra++
                }
                break;
                }
            }
            else {
                if (contLetra == 4) {
                    letrasVoadorasUsadas = 1;
                    contLetra = 0;
                }

                escolherLetra()
            }
        }
        else {
            switch(alfa) {
            case 3: {
                componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                listaLetras.append(componente)
                letrasVoadroasUsadas = letrasVoadorasUsadas * alfa
                contLetra++
            }
            break;
            case 5: {
                componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                listaLetras.append(componente)
                letrasVoadorasUsadas = letrasVoadorasUsadas * alfa
                contLetra++
            }
            break;
            case 7: {
                componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                listaLetras.append(componente)
                letrasVoadorasUsadas = letrasVoadorasUsadas * alfa
                contLetra++
            }
            break;
            case 11: {
                componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                listaLetras.append(componente)
                letrasVoadorasUsadas = letrasVoadorasUsadas * alfa
                contLetra++
            }
            break;
            }
        }
    }

    function escolherHeaderLetra() {
        var alfa = letraAleatoria()
        //console.log("ALFA: " + alfa)
        if (letrasUsadas != 1) {
            if (letrasUsadas % alfa != 0) {
                switch(alfa) {
                case 3: {
                    header.source = "resources/AHeader.png"
                    letrasUsadas = letrasUsadas * alfa
                    contHeader++
                }
                break;
                case 5: {
                    header.source = "resources/BHeader.png"
                    letrasUsadas = letrasUsadas * alfa
                    contHeader++
                }
                break;
                case 7: {
                    header.source = "resources/CHeader.png"
                    letrasUsadas = letrasUsadas * alfa
                    contHeader++
                }
                break;
                case 11: {
                    header.source = "resources/DHeader.png"
                    letrasUsadas = letrasUsadas * alfa
                    contHeader++
                }
                break;
                }
            }
            else {
                if (contHeader == 4) {
                    letrasUsadas = 1
                    contHeader = 0
                }

                escolherHeaderLetra()
            }
        }
        else {
            switch(alfa) {
            case 3: {
                header.source = "resources/AHeader.png"
                letrasUsadas = letrasUsadas * alfa
                contHeader++
            }
            break;
            case 5: {
                header.source = "resources/BHeader.png"
                letrasUsadas = letrasUsadas * alfa
                contHeader++
            }
            break;
            case 7: {
                 header.source = "resources/CHeader.png"
                letrasUsadas = letrasUsadas * alfa
                contHeader++
            }
            break;
            case 11: {
                header.source = "resources/DHeader.png"

               letrasUsadas = letrasUsadas * alfa

                letrasUsadas = letrasUsadas * alfa

                contHeader++
            }
            break;
            }
        }
        Logic.setCorrectLetter(header.source+"")
    }

    function letraAleatoria() {
        var ret
        switch(Math.floor(Math.random()*4)) {
        case 0: {
            ret = 3
        }
        break;
        case 1: {
            ret = 5
        }
        break;
        case 2:{
            ret = 7
        }
        break;
        case 3: {
            ret = 11
        }
        break;
        }

        return ret
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
                rows: 2

                Image {
                    id:header
                    source: ""
                    y: 0
                    Layout.alignment: (Qt.AlignTop | Qt.AlignHCenter)

                    Component.onCompleted: {
                        //header.source = "resources/BHeader.png"
                        //console.log("OLAAAA")
                        atividade.escolherHeaderLetra()
                        //console.log(source + " " + letrasUsadas)
                    }
                }

                Image {
                    id: personagem
                    y: 0
                    Layout.alignment: (Qt.AlignBottom | Qt.AlignHCenter)
                             source:"resources/Personagem.png"
                    state: "NOCHAO"
                    states: [
                        State {
                            name: "NOCHAO"; PropertyChanges {target: personagem}
                        },
                        State {
                            name: "PULANDO"; PropertyChanges {target: personagem}
                        }

                    ]
                }
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                if(personagem.state == "NOCHAO") {
                    personagem.state = "PULANDO"
                    animatePersonagem.start()
                }
            }
        }

        NumberAnimation {
            id: animatePersonagem
            target: personagem
            property: "y"
            from:personagem.y
            to: personagem.y - 150
            duration: 500
            easing.type: Easing.OutQuad
            onStopped: {
                Logic.setAnswer(personagem.y)
                animatePersonagemToBottom.start()
                if(Logic.getChange()===true){
                        atividade.escolherLetra()
                        Logic.setChange();
                }
            }
        }

        NumberAnimation {
            id: animatePersonagemToBottom
            target: personagem
            property: "y"
            from: personagem.y
            to: personagem.y + 150
            duration: 500
            easing.type: Easing.InQuad
            onStopped: {
                Logic.setAnswer(personagem.y);
                personagem.state = "NOCHAO"
            }
        }
    }
}


