import QtQuick 2.12
import QtQuick.Controls 2.5

HomeForm {
    title: "Заметки"
    Page {
        width: 600
        height: 400

        //сетка
        Grid {
            id: grid
            x: 10
            y: 10
            width: 620
            height: 780
            columns: 3
            spacing: 10

            //репитер создает на основе модели с заметками плитки, которые содержат их название и текст
            Repeater {
                model: notes
                Rectangle {
                    id: note
                    width: 200
                    height: 200
                    color: notes.get(index).color
                    border.color: "#0081f4"
                    radius: 10
                    // нажатие на плитку подгружает страницу редактирования этой заметки
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            window.editing = index
                            stackView.push("Page1.qml")
                        }
                    }
                    //заголовок плитки
                    Rectangle {
                        id: topBar
                        width: 200
                        height: 30
                        anchors.top: parent.top
                        color: "#0081f4"
                        radius: 10
                        //срезаем нижние округленные края
                        Rectangle {
                            anchors.bottom: topBar.bottom
                            width: 200
                            height: 10
                            color: "#0081f4"
                        }
                        Text {
                            id: title
                            text: notes.get(index).title
                            font.pixelSize: Qt.application.font.pixelSize * 1.4
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            elide: Text.ElideRight
                            anchors.fill: parent
                            color: "#FFFFFF"
                        }
                    }
                    //тег заметки
                    Rectangle {
                        id: tag
                        width: 200
                        height: 20
                        anchors.top: topBar.bottom
                        border.color: "#0081f4"
                        Text {
                            id: tagtext
                            text: notes.get(index).tag
                            font.pixelSize: Qt.application.font.pixelSize * 1.2
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            elide: Text.ElideRight
                            anchors.fill: parent
                            color: "#000000"
                        }
                    }

                    //текст заметки
                    Rectangle {
                        id: content
                        width: 190
                        height: 165
                        color: "transparent"
                        anchors.top: tag.bottom
                        anchors.left: note.left
                        Text {
                            id: noteText
                            anchors.fill: parent
                            wrapMode: Text.Wrap
                            leftPadding: 3
                            text: notes.get(index).text
                            elide: Text.ElideRight
                            font.pointSize: 12
                        }
                    }
                }
            }
        }
    }

    //кнопка создания заметки
    RoundButton {
        id: add
        text: "+"
        width: 80
        height: 80
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
            radius: add.radius
            color: "#9ae0de"
        }
        onClicked: {
            stackView.push("Page2.qml")
        }
    }
}
