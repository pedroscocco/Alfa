import QtQuick 2.1
import QtQuick.Layouts 1.1

Item {
    id: resultado
    visible: true

    function prepare(pontuation) {
        if(pontuation >= 0 && pontuation <= 4) {
            if(pontuation < 3) {
                telaResultado.state = "LOW"
            }
            else {
                telaResultado.state = "HIGH"
            }
            background.source = "resources/Result"+pontuation+".jpg"
        }
    }

    Rectangle {
        id: telaResultado
        anchors.fill: parent

        states: [
            State {
                name: "LOW"
                PropertyChanges {
                    target: jogar
                    src: "resources/PlayAgainButton.png"
                    srclkd: "resources/PlayAgainButtonClicked.png"
                }
            },
            State {
                name: "HIGH"
                PropertyChanges {
                    target: jogar
                    src: "resources/PlayNextButton.png"
                    srclkd: "resources/PlayNextButtonClicked.png"
                }
            }

        ]
        Image {
            id: background
            source: "resources/Result0.jpg"
            anchors.fill: parent
        }

        RowLayout {
        id: opcoes
        Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
        anchors.bottom: parent.bottom

            Image {
                id: estudar
                source: "resources/StudyButton.png"
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        estudar.source = "resources/StudyButtonClicked.png"
                        buttonClick.play()
                    }
                    onReleased: {
                        quarto.visible = true;
                        resultado.visible = false
                        estudar.source = "resources/StudyButton.png"
                    }
                }
            }

            Image {
                id: jogar
                source: src
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                property string src: "resources/PlayAgainButton.png"
                property string srclkd: "resources/PlayAgainButtonClicked"

                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        jogar.source = jogar.srclkd
                        buttonClick.play()
                    }
                    onReleased: {
                        jogar.source = jogar.src
                        resultado.visible = false
                        atividade.visible = true
                        if(telaResultado.state === 'LOW') {
                            atividade.retry()
                        }
                        else if(telaResultado.state === 'HIGH') {
                            atividade.next()
                        }
                    }
                }
            }

            Image {
                id: sair
                source: "resources/QuitButton.png"
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)

                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        sair.source = "resources/QuitButtonClicked.png"
                        buttonClick.play()
                    }
                    onReleased: {
                        sair.source = "resources/QuitButton.png"
                        menuInicial.visible = true
                        resultado.visible = false
                    }
                }
            }
        }
    }

}
