import QtQuick 2.0

Image {
    id: letraVoadora
    x: 0
    y: 0
    source:""
    NumberAnimation on x { from: x; to: 1300; duration: 16000; onStopped: letraVoadora.destroy()}
    SequentialAnimation on y {
        loops: Animation.Infinite
        NumberAnimation { from: y + 30; to: y - 30; duration: 1600; easing.type: Easing.InOutBack }
        NumberAnimation { from: y - 30; to: y + 30; duration: 1600; easing.type: Easing.InOutBack }
    }

    Component.onCompleted: {
        switch(Math.floor(Math.random()*4)) {
        case 0: {
            letraVoadora.source = "resources/A.png"
        }
        break;
        case 1: {
            letraVoadora.source = "resources/B.png"
        }
        break;
        case 2: {
            letraVoadora.source = "resources/C.png"
        }
        break;
        case 3: {
            letraVoadora.source = "resources/D.png"
        }
        break;
        }
    }
}
