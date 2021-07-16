import QtQuick 2.12
import QtQuick.Controls 2.5

Page1Form {
    title: "Редактирование заметки"
    Page {
        width: 640
        height: 800

        RoundButton {
            id: save
            x: 489
            y: 0
            text: "Сохранить"
            font.pointSize: 14
            background: Rectangle {
                radius: save.radius
                color: "#9ae0de"
            }
            onClicked: {
                notes.set(editing, {"title": title.text, "text": notetext.text})
                stackView.pop()
            }
        }

        TextField {
            id: title
            x: 6
            y: 54
            width: 626
            height: 51
            placeholderText: "Заголовок заметки"
            font.pointSize: 14
            font.bold: true
            text: notes.get(editing).title
        }

        TextEdit {
            id: notetext
            x: 6
            y: 117
            width: 626
            height: 689
            wrapMode: Text.Wrap
            font.pointSize: 12
            text: notes.get(editing).text
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
