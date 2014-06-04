import QtQuick 2.1
import QtMultimedia 5.0
import "resources"
import "mylogic.js" as Logic

Image {
    id: letraVoadora
    x: 0
    y: 0
    source:""

    property int alfa: 3
    property int flag: 0

    SoundEffect {
        id: letraCapturada
        source: "resources/sounds/CapturaLetra1Sine.wav"
        //source: "resources/sounds/CapturaLetra1Square.wav"
        //source: "resources/sounds/CapturaLetra2Sine.wav"
        //source: "resources/sounds/CapturaLetra2Square.wav"
        //source: "resources/sounds/CapturaLetra3Sine.wav"
    }

    SoundEffect {
        id: letraErrada
        source: "resources/sounds/Erro1.wav"
        //source: "resources/sounds/Erro1.wav"
        //source: "resources/sounds/Erro1.wav"
    }

    onXChanged: {
        var sourcePath= source+"";
        if(Logic.getClearLetters()) {
            destroy()
        }
        if(((x+143>564.0) && (x<716.0)) && flag == 0) {
            if(Logic.getAnswer()>145 && Logic.getAnswer()<376) {
                if (sourcePath.indexOf(Logic.getCorrectLetter())>0){
                    source= Logic.getSource(sourcePath, "Ok");
                    flag = 1
                    //console.log("source path"+source)
                    letraCapturada.play()
                }
                else {
                    source= Logic.getSource(sourcePath, "Wrong");
                    flag = 1
                    letraErrada.play()
                }
            }
        }
    }


    NumberAnimation on x { from: x; to: 1300; duration: 15000; onStopped: letraVoadora.destroy()}
    SequentialAnimation on y {
        loops: Animation.Infinite
        NumberAnimation { from: y + 30; to: y - 30; duration: 1600; easing.type: Easing.InOutBack }
        NumberAnimation { from: y - 30; to: y + 30; duration: 1600; easing.type: Easing.InOutBack }
    }


    Component.onCompleted: {
        switch(alfa) {
        case 3: {
            letraVoadora.source = "resources/A_.png"
        }
        break;
        case 5: {
            letraVoadora.source = "resources/B_.png"
        }
        break;
        case 7: {
            letraVoadora.source = "resources/C_.png"
        }
        break;
        case 11: {
            letraVoadora.source = "resources/D_.png"
        }
        break;
        }
    }


}
