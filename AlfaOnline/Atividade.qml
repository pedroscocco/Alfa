import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtMultimedia 5.0
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

    property int tickCounter: 0

    ListModel {
        id: listaLetras
    }

    SoundEffect {
        id: jumpSound
        volume: 0.25
        source: "resources/sounds/Jump1.wav"
        //source: "resources/sounds/Jump2.wav"
    }

    SoundEffect {
        id: trocaHeader
        //source: "resources/sounds/TrocaHeader1.wav"
        //source: "resources/sounds/TrocaHeader1.wav"
        source: "resources/sounds/TrocaHeader1.wav"
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
        interval: 16
        running: false
        repeat: true
        onTriggered: tick()
    }

    onStateChanged: {
        if (state == "INICIADO") {
            timer.running = true;
            life1.source= "resources/Life.png"
            life2.source= "resources/Life.png"
            life3.source= "resources/Life.png"
            escolherLetra()
            escolherHeaderLetra()
        }
    }

    function tick() {
        if (atividade.state != "PARADO") {
            tickCounter++
            if(tickCounter == 313) {
                escolherLetra()
                tickCounter = 0
            }
        }
        else {
            tickCounter = 0
        }
    }          
    function escolherLetra() {
        var alfa = letraAleatoria()
        var componente = Qt.createComponent("LetraVoadora.qml")
        //console.log("ALFA: " + alfa)
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
                case 13: {
                    componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                    listaLetras.append(componente)
                    letrasVoadorasUsadas = letrasVoadorasUsadas * alfa
                    contLetra++
                }
                break;
                case 17: {
                    componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                    listaLetras.append(componente)
                    letrasVoadorasUsadas = letrasVoadorasUsadas * alfa
                    contLetra++
                }
                break;
                case 19: {
                    componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                    listaLetras.append(componente)
                    letrasVoadorasUsadas = letrasVoadorasUsadas * alfa
                    contLetra++
                }
                break;
                case 23: {
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
            case 13: {
                componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                listaLetras.append(componente)
                letrasVoadorasUsadas = letrasVoadorasUsadas * alfa
                contLetra++
            }
            break;
            case 17: {
                componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                listaLetras.append(componente)
                letrasVoadorasUsadas = letrasVoadorasUsadas * alfa
                contLetra++
            }
            break;
            case 19: {
                componente.createObject(backgroundAtividade,{ "x": -100, "y": 180, "alfa": alfa})
                listaLetras.append(componente)
                letrasVoadorasUsadas = letrasVoadorasUsadas * alfa
                contLetra++
            }
            break;
            case 23: {
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
                    Logic.setCorrectLetter(header.source+"")
                    contHeader++
                }
                break;
                case 5: {
                    header.source = "resources/BHeader.png"
                    letrasUsadas = letrasUsadas * alfa
                    Logic.setCorrectLetter(header.source+"")
                    contHeader++
                }
                break;
                case 7: {
                    header.source = "resources/CHeader.png"
                    letrasUsadas = letrasUsadas * alfa
                    Logic.setCorrectLetter(header.source+"")
                    contHeader++
                }
                break;
                case 11: {
                    header.source = "resources/DHeader.png"
                    letrasUsadas = letrasUsadas * alfa
                    Logic.setCorrectLetter(header.source+"")
                    contHeader++
                }
                break;
                case 13: {
                    header.source = "resources/DHeader.png"
                    letrasUsadas = letrasUsadas * alfa
                    Logic.setCorrectLetter(header.source+"")
                    contHeader++
                }
                break;
                case 17: {
                    header.source = "resources/DHeader.png"
                    letrasUsadas = letrasUsadas * alfa
                    Logic.setCorrectLetter(header.source+"")
                    contHeader++
                }
                break;
                case 19: {
                    header.source = "resources/DHeader.png"
                    letrasUsadas = letrasUsadas * alfa
                    Logic.setCorrectLetter(header.source+"")
                    contHeader++
                }
                break;
                case 23: {
                    header.source = "resources/DHeader.png"
                    letrasUsadas = letrasUsadas * alfa
                    Logic.setCorrectLetter(header.source+"")
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
                Logic.setCorrectLetter(header.source+"")
                contHeader++
            }
            break;
            case 5: {
                header.source = "resources/BHeader.png"
                letrasUsadas = letrasUsadas * alfa
                Logic.setCorrectLetter(header.source+"")
                contHeader++
            }
            break;
            case 7: {
                 header.source = "resources/CHeader.png"
                letrasUsadas = letrasUsadas * alfa
                Logic.setCorrectLetter(header.source+"")
                contHeader++
            }
            break;
            case 11: {
                header.source = "resources/DHeader.png"
               letrasUsadas = letrasUsadas * alfa
                Logic.setCorrectLetter(header.source+"")
                contHeader++
            }
            break;
            case 13: {
                header.source = "resources/DHeader.png"
                letrasUsadas = letrasUsadas * alfa
                Logic.setCorrectLetter(header.source+"")
                contHeader++
            }
            break;
            case 17: {
                header.source = "resources/DHeader.png"
                letrasUsadas = letrasUsadas * alfa
                Logic.setCorrectLetter(header.source+"")
                contHeader++
            }
            break;
            case 19: {
                header.source = "resources/DHeader.png"
                letrasUsadas = letrasUsadas * alfa
                Logic.setCorrectLetter(header.source+"")
                contHeader++
            }
            break;
            case 23: {
                header.source = "resources/DHeader.png"
                letrasUsadas = letrasUsadas * alfa
                Logic.setCorrectLetter(header.source+"")
                contHeader++
            }
            break;
            }
        }
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
        case 4: {
            ret = 13
        }
        break;
        case 5: {
            ret = 17
        }
        break;
        case 6: {
            ret = 19
        }
        break;
        case 7: {
            ret = 23
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

                    /*Component.onCompleted: {
                       atividade.escolherHeaderLetra()
                    }*/

                    RowLayout {
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom

                        Image {
                            id: life1
                            source: "resources/Life.png"
                        }
                        Image {
                            id: life2
                            source: "resources/Life.png"
                        }
                        Image {
                            id: life3
                            source: "resources/Life.png"
                        }
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
                    onYChanged: {

                        Logic.setAnswer(personagem.y)
                    }
                }
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                if(personagem.state == "NOCHAO") {
                    personagem.state = "PULANDO"
                    animatePersonagem.start()
                    jumpSound.play()
                }
            }
        }

        NumberAnimation {
            id: animatePersonagem
            target: personagem
            property: "y"
            from:personagem.y
            to: personagem.y - 226
            duration: 500
            easing.type: Easing.OutQuad
            onStopped: {
                animatePersonagemToBottom.start()
            }
        }

        NumberAnimation {
            id: animatePersonagemToBottom
            target: personagem
            property: "y"
            from: personagem.y
            to: personagem.y + 226
            duration: 500
            easing.type: Easing.InQuad
            onStopped: {
                //Logic.setAnswer(personagem.y);
                personagem.state = "NOCHAO"
            }
        }
    }

    function retry() {
        Logic.start()
        backgroundAtividade.source = "resources/BackgroundPlay.jpg"
        listaLetras.clear()
        //escolherHeaderLetra()
    }

    function next(){
        Logic.start()
        backgroundAtividade.source = "resources/BackgroundPlay2.jpg"
        listaLetras.clear()
        //escolherHeaderLetra()
    }

    function change(){
        trocaHeader.play()
        escolherHeaderLetra()
        life1.source= "resources/Life.png"
        life2.source= "resources/Life.png"
        life3.source= "resources/Life.png"
    }

    function toResult(result){
        resultado.prepare(result)
        resultado.visible = true
        atividade.visible = false
        Logic.setClearLetters(true)
        console.log("Exibe resultado: "+ result)
    }

    function setLife(numberOfLife){
        if(numberOfLife===0){
            life1.source= "resources/LifeLost.png"
            life2.source= "resources/LifeLost.png"
            life3.source= "resources/LifeLost.png"
        }else if(numberOfLife===1){
            life1.source= "resources/LifeLost.png"
            life2.source= "resources/LifeLost.png"
            life3.source= "resources/Life.png"
        }else if(numberOfLife===2){
            life1.source= "resources/LifeLost.png"
            life2.source= "resources/Life.png"
            life3.source= "resources/Life.png"
        }else if(numberOfLife===3){
            life1.source= "resources/Life.png"
            life2.source= "resources/Life.png"
            life3.source= "resources/Life.png"
        }
    }

    Component.onCompleted: Logic.setAtividadeItem(atividade)

    Image {
        source: "resources/Quit.png"
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 10
        // Para voltar ao Menu Inicial
        MouseArea {
            anchors.fill: parent
            onPressed: {
                atividade.visible = false;
                Logic.setClearLetters(true)
                buttonClick.play()
                contHeader = 0
            }
        }
    }
}


