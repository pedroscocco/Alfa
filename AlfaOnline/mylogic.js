.pragma library // Shared game state
var letrasVistas=0;
var letterCenter;
var correctLetter;
var answer;

function mostrarPopup(object1, object2, object3, object4) {
    var source1=object1;
    var source2=object2;
    var source3=object3;
    var source4=object4;

    if(source1.indexOf("Clicked")>0 && source2.indexOf("Clicked")>0&& source3.indexOf("Clicked")>0 && source4.indexOf("Clicked")>0 ){
        return true;
    }else{
        return false;
    }

}

function setLetterCenter(source){
    if(source!==letterCenter){

    }

   letterCenter=source;


}

function setCorrectLetter(source){
    if(source1.indexOf("AHeader")>0){
        correctLetter='A_.png';
    }else  if(source1.indexOf("BHeader")>0){
        correctLetter='B_.png';
    }else  if(source1.indexOf("CHeader")>0){
        correctLetter='C_.png';
    }else  if(source1.indexOf("DHeader")>0){
        correctLetter='D_.png';
    }
}


function getSource(){
    if(correctLetter!==null && letterCenter!==null && answer!==null){
        var a =answer+"";
        console.log(a);
        if(a.indexOf(correctLetter)===0){
            return answer.replace('_', 'Ok');
        }else{
            return answer.replace('_', 'Wrong');
        }
    } else return letterCenter;
}

function setAnswer(){
    answer=letterCenter+"";
    console.log(letterCenter + "letterCenter");
    console.log(answer+ " answer ");
}

function start(){
    letterCenter=null;
    correctLetter=null;
    answer=null;
}




