import QtQuick 2.1
import QtQuick.Layouts 1.1
import "resources"

Item {
    id: sugestao
    Rectangle {
      id: popup1
      anchors.fill: parent
      anchors.centerIn: parent
      color: Qt.rgba(0,0,0,0.7)

        Rectangle {
            id: popup
            anchors.fill: parent
            anchors.centerIn: parent
            anchors.margins: 0

           Image {
                anchors.fill: parent
                source: "resources/BackgroundPopUp.jpg"
                height: popup.height
                width: popup.width
           }

          Image {
                anchors.top:  popup.top
                anchors.horizontalCenter: popup.horizontalCenter
                source: "resources/LogoPopUp.png"
                smooth: true
          }


          RowLayout {
                    anchors.bottom: popup.bottom
                    Image {
                        source: "resources/PlayButton.png"
                        MouseArea {
                            anchors.fill: parent
                            onPressed: {
                                parent.source = "resources/PlayButtonClicked.png"
                            }
                            onReleased: {
                                parent.source = "resources/PlayButton.png"
                                atividade.visible = true;
                            }
                        }
                    }
                    Image {

                        source: "resources/StudyNextButton.png"
                        MouseArea {
                            anchors.fill: parent
                            onPressed: {
                                parent.source = "resources/StudyNextButtonClicked.png"
                            }
                            onReleased: {
                                parent.source = "resources/StudyNextButton.png"
                                quarto.change()
                                sugestao.visible = false;
                            }
                        }
                    }
                    Image {
                        source: "resources/QuitButton.png"
                        MouseArea {
                            anchors.fill: parent
                            onPressed: {
                                parent.source = "resources/QuitButtonClicked.png"
                                sugestao.visible = false
                                quarto.focus = true
                            }
                        }
                    }
                }

        }
    }

}
