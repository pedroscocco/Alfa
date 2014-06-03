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
            anchors.margins: 100

           Image {
                anchors.fill: parent
                source: "resources/BackgroundPopUp.jpg"
                height: popup.height
                width: popup.width
           }

            ColumnLayout {


              Image {
                    height: popup.height/3
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                    source: "resources/LogoPopUp.png"
              }


                RowLayout {
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                    Image {
                        height: (popup.height/3)*2
                        Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                        source: "resources/PlayButton.png"
                        MouseArea {
                            anchors.fill: parent
                            onPressed: {
                                parent.source = "resources/PlayButtonClicked.png"
                                buttonClick.play()
                            }
                            onReleased: {
                                parent.source = "resources/PlayButton.png"
                                atividade.visible = true;
                            }
                        }
                    }
                    Image {
                        height: 400
                        Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                        source: "resources/QuitButton.png"
                        MouseArea {
                            anchors.fill: parent
                            onPressed: {
                                parent.source = "resources/QuitButtonClicked.png"
                                sugestao.visible = false
                                quarto.focus = true
                                buttonClick.play()
                            }
                        }
                    }
                }
            }
        }
    }

}
