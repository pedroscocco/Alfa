.pragma library // Shared game state
var letrasVistas=0;
var letterCenter;
var correctLetter;
var answer;
var collision;
var result;
var tries;
var numberOfErrors;
var change;
var atividadeItem;
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

function setCorrectLetter(source){
    var source1=source+"";
    if(source1.indexOf("AHeader")>0){
        correctLetter='A_.png';
    }else  if(source1.indexOf("BHeader")>0){
        correctLetter='B_.png';
    }else  if(source1.indexOf("CHeader")>0){
        correctLetter='C_.png';
    }else  if(source1.indexOf("DHeader")>0){
        correctLetter='D_.png';
    }

    console.log("Letter: correct111: "+ correctLetter)

}

function getSource (source, resultNow){
    var s= source+"";
    s=s.replace("_", resultNow+"");
    s=s.replace("qrc:///", "");
    if(resultNow==='Ok'){
        console.log("ok");
        result++;
        change=1;
        atividadeItem.change();
         console.log("ok: "+ change+"  Tries: "+ tries);
    }else if(change!==1){
        tries++;
        console.log("trie++: "+ tries);
        if(tries===3){

              console.log("trie=3: "+ change+"  Tries: "+ tries);
            change=1;
            tries=0;
        }
     }

    return s;
}

function getCorrectLetter(){
      return correctLetter;
}

function setAnswer(positionY){
    answer=positionY;
}

function getAnswer(){
   return answer;
}

function start(){
    letterCenter=null;
    answer=null;
    collision=false;
    result=0;
    tries=0;
    numberOfErrors=0;
    change=0;
}

function getChange(){
    console.log("Change: "+ change+"  Tries: "+ tries);
    return change;
}

function setChange(){

    change=0;
    tries=0;
    numberOfErrors=0;

     console.log("set change"+ tries);
}

function getResult(){
    return result;
}



function setAtividadeItem(tempAtividadeItem) {
    atividadeItem = tempAtividadeItem;
}



