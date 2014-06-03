<<<<<<< HEAD
import QtQuick 2.0
import "mylogic.js" as Logic
=======
import QtQuick 2.1
import "resources"
>>>>>>> branch 'master' of https://github.com/pedroscocco/Alfa.git

Image {
    id: letraVoadora
    x: 0
    y: 0
    source:""

    onXChanged: {
<<<<<<< HEAD
        if((x>574) && (x<721)) {
            Logic.setLetterCenter(source + "");
            source: Logic.getSource();
            console.log(source + " " + x);
        }
    }

    NumberAnimation on x { from: x; to: 1300; duration: 16000; onStopped: letraVoadora.destroy();}
=======
        //console.log(source + " " + x)
    }

    NumberAnimation on x { from: x; to: 1300; duration: 16000; onStopped: letraVoadora.destroy()}
>>>>>>> branch 'master' of https://github.com/pedroscocco/Alfa.git
    SequentialAnimation on y {
        loops: Animation.Infinite
        NumberAnimation { from: y + 30; to: y - 30; duration: 1600; easing.type: Easing.InOutBack }
        NumberAnimation { from: y - 30; to: y + 30; duration: 1600; easing.type: Easing.InOutBack }
    }


    Component.onCompleted: {
        switch(Math.floor(Math.random()*4)) {
        case 0: {
            letraVoadora.source = "resources/A_.png"
        }
        break;
        case 1: {
            letraVoadora.source = "resources/B_.png"
        }
        break;
        case 2: {
            letraVoadora.source = "resources/C_.png"
        }
        break;
        case 3: {
            letraVoadora.source = "resources/D_.png"
        }
        break;
        }
    }
}
