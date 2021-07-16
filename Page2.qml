import QtQuick 2.12
import QtQuick.Controls 2.5

Page2Form {
    title: "Новая заметка"
    Page {
        width: 640
        height: 800

        RoundButton {
            id: save
            x: 489
            y: 0
            text: "Сохранить"
            font.pointSize: 14
            property string checkedcolor: "#add8e6"
            background: Rectangle {
                radius: save.radius
                color: "#9ae0de"
            }
            onClicked: {
                if (blue.checked == true) {
                    checkedcolor = "#add8e6"
                }
                if (green.checked == true) {
                    checkedcolor = "#90ee90"
                }
                if (yellow.checked == true) {
                    checkedcolor = "#f7f1af"
                }
                notes.append({"title": title.text, "color": checkedcolor, "tag": comboBox.currentText, "text": notetext.text})
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
        }

        TextEdit {
            id: notetext
            x: 6
            y: 218
            width: 626
            height: 588
            wrapMode: Text.Wrap
            font.pointSize: 12
        }

        RadioButton {
            id: blue
            x: 161
            y: 111
            width: 131
            height: 48
            text: qsTr("Синий")
            checked: true
        }
        RadioButton {
            id: green
            x: 238
            y: 111
            width: 131
            height: 48
            text: qsTr("Зеленый")
        }
        RadioButton {
            id: yellow
            x: 329
            y: 111
            width: 131
            height: 48
            text: qsTr("Желтый")
        }

        Text {
            id: text1
            x: 12
            y: 111
            width: 113
            height: 48
            text: qsTr("Цвет заметки")
            font.pointSize: 14
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: text2
            x: 12
            y: 152
            width: 113
            height: 48
            text: qsTr("Тег")
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 14
        }

        ComboBox {
            id: comboBox
            x: 161
            y: 152
            width: 162
            height: 48
            model: ["Работа", "Напоминания", "Диплом"]
        }
    }
}
