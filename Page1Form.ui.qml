import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 640
    height: 800

    title: qsTr("Новая заметка")

    RoundButton {
        id: save
        x: 532
        y: 0
        text: "Сохранить"
        background: Rectangle {
            radius: save.radius
            color: "#9ae0de"
        }
    }

    TextField {
        id: title
        x: 6
        y: 54
        width: 626
        height: 43
        placeholderText: "Заголовок заметки"
    }

    TextEdit {
        id: notetext
        x: 6
        y: 103
        width: 626
        height: 689
        wrapMode: Text.Wrap
    }
}
