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

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Page 1")
                width: parent.width
                onClicked: {
                    stackView.push("Page1Form.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Page 2")
                width: parent.width
                onClicked: {
                    stackView.push("Page2Form.ui.qml")
                    drawer.close()
                }
            }
        }
    }

    RoundButton {
        id: add
        text: "+"
        width: 50
        height: 50
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        background: Rectangle {
            radius: add.radius
            color: "#9ae0de"
        }
        onClicked: {
            stackView.push("Page1Form.ui.qml")
        }
    }

    StackView {
        id: stackView
        initialItem: "HomeForm.ui.qml"
        anchors.fill: parent
    }
}
