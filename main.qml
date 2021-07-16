import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    width: 640
    height: 800
    visible: true
    title: qsTr("Филипченко Егор 191-331")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        background: Rectangle {
               color: "#9ae0de"
        }

        ToolButton {
            id: toolButton
            contentItem: Text {
                text: stackView.depth > 1 ? "\u25C0" : "\u2630"
                color: "#000000"
                font.pixelSize: Qt.application.font.pixelSize * 1.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            color: "#000000"
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.66
        height: window.height
        Text {
            id: t1
            text: "Заметки"
            font.pointSize: 20
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
        }
        Text {
            text: 'Экзаменационное задание по дисциплине "Разработка безопасных мобильных приложений", Московский политех, 16 июля 2021 г.'
            font.pointSize: 10
            anchors.top: t1.bottom
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.Wrap
        }
    }

    ListModel {
        id: notes
        ListElement {
            title: "Заметка"
            text: "fiojwefiojwe fweiofjwe jofeiwjfoiwej foiwejofjwe"
        }
        ListElement {
            title: "Заffметка"
            text: "хера"
        }
    }

    StackView {
        id: stackView
        initialItem: "Home.qml"
        anchors.fill: parent
    }
}
