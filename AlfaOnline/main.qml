import QtQuick 2.1
import QtQuick.Window 2.1
import QtQuick.Layouts 1.1
import "resources"
import "mylogic.js" as Logic

Window {
    id: window
    visible: true
    width: 1280
    height: 800


    // Colocar tudo abaixo em um rectangle com id menuInicial
    // Pensando.. seria melhor colocar num arquivo so dele?
    Rectangle {
        id: menuInicial
        anchors.fill: parent
        onVisibleChanged: visibilidadeMenuInicial()

        Image {
            id: bg_menu
            anchors.fill: parent
            source: "resources/BackgroundTelaInicial.jpg"
        }

        ColumnLayout {
            id: objetos
            anchors.fill: parent

            Image {
                id: titulo
               source:"resources/LogoTelaInicial.png"
                Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                //anchors.horizontalCenter: parent.horizontalCenter
                //y: parent.height/2 - parent.height/10
            }

            RowLayout {
            id: opcoes
            Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)

                Image {
                    id: estudar
                    source: "resources/StudyButton.png"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)
                    MouseArea {
                        anchors.fill: parent
                        onPressed: {
                            estudar.source = "resources/StudyButtonClicked.png"
                        }
                        onReleased: {
                            quarto.visible = true;
                            menuInicial.visible = false
                            estudar.source = "resources/StudyButton.png"
                        }
                    }
                }

                Image {
                    id: jogar
                    source: "resources/PlayButton.png"
                    Layout.alignment: (Qt.AlignHCenter | Qt.AlignVCenter)

                    MouseArea {
                        anchors.fill: parent
                        onPressed: {
                            jogar.source = "resources/PlayButtonClicked.png"
                        }
                        onReleased: {
                            Logic.start()
                            atividade.visible = true
                            menuInicial.visible = false
                            jogar.source = "resources/PlayButton.png"
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
                        }
                        onReleased: {
                            sair.source = "resources/QuitButton.png"
                            Qt.quit();
                        }
                    }
                }
            }
        }
    }

    // Exemplo pra chamar quarto
    Quarto {
        id: quarto
        anchors.fill: parent
        visible: false
        onVisibleChanged: visibilidadeQuarto()
    }

    // Exemplo pra chamar tela da letra é pra colocar em Quarto.qml depois
    Letra {
        id: letra
        anchors.fill: parent
        visible: false
        onVisibleChanged: visibilidadeLetra() // Exemplo
    }

    Sugestao {
        id: sugestao
        anchors.fill: parent
        visible: false
        onVisibleChanged: visibilidadeSugestao() // Exemplo
    }

    // Exemplo pra chamar tela da letra é pra colocar em Quarto.qml depois
   Atividade {
        id: atividade
        anchors.fill: parent
        visible: false
        state: "PARADO"
        onVisibleChanged: visibilidadeAtividade()
    }

   Resultado {
       id: resultado
       anchors.fill: parent
       visible: false
       onVisibleChanged: visibilidadeResultado() // Exemplo
    }

    // Funcoes de controle de visibilidade
    function visibilidadeMenuInicial() {

    }

    function visibilidadeLetra() {
        if (letra.visible) {
            quarto.focus = false;
        }
        else {
            quarto.focus = true;
            sugestao.visible = quarto.mostrarPopup()
        }
    }

    function visibilidadeSugestao() {
        if (sugestao.visible) {
            quarto.focus = false;
        }
        else {
            quarto.focus = true;
        }
    }

    function visibilidadeQuarto() {
       if (quarto.visible) {
           menuInicial.visible = false;
           atividade.visible = false;
       }
       else {
           menuInicial.visible = true;
       }
    }

    function visibilidadeAtividade() {
       if (atividade.visible) {
           menuInicial.visible = false;
           quarto.visible = false;
           sugestao.visible = false;
           atividade.state = "INICIADO"
       }
       else {
           menuInicial.visible = true;
           atividade.state = "PARADO"
       }
    }

    function visibilidadeResultado() {

    }

    }
