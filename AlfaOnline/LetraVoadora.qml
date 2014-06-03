import QtQuick 2.0
import QtQuick 2.1
import "resources"
import "mylogic.js" as Logic

Image {
    id: letraVoadora
    x: 0
    y: 0
    source:""

    property int alfa: 3

    onXChanged: {
        var sourcePath= source+"";
        if((x>574.0) && (x<721.0)) {
           if((Logic.getAnswer()===293) && (sourcePath.indexOf(Logic.getCorrectLetter())>0)){
               source= Logic.getSource(sourcePath, "Ok");
                      console.log("source path"+source)
           }else  if(Logic.getAnswer()===293){
               source= Logic.getSource(sourcePath, "Wrong");
           }
        }
    }


    NumberAnimation on x { from: x; to: 1300; duration: 16000; onStopped: letraVoadora.destroy()}
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
