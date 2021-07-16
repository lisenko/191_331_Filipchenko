import QtQuick 2.12
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.0

Page {
    width: 600
    height: 400

    title: qsTr("Заметки")

    Grid {
        id: grid
        x: 10
        y: 10
        //width: 620
        //height: 780
        columns: 3
        spacing: 10

        Rectangle {
            id: note1
            width: 200
            height: 200
            color: "transparent"
            border.color: "#0081f4"
            radius: 10
            Rectangle {
                id: topBar
                width: 200
                height: 30
                anchors.top: parent.top
                color: "#0081f4"
                radius: 10
                Rectangle {
                    anchors.bottom: topBar.bottom
                    width: 200
                    height: 10
                    color: "#0081f4"
                }
                Text {
                    id: title
                    text: "Заметка"
                    font.pixelSize: Qt.application.font.pixelSize * 1.4
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                    anchors.fill: parent
                    color: "#FFFFFF"
                }
            }
            Rectangle {
                id: content
                width: 190
                height: 165
                color: "transparent"
                anchors.top: topBar.bottom
                anchors.left: note1.left
                Text {
                    id: noteText
                    anchors.fill: parent
                    text: "gojrepoe ijwrpoj pgogjwrepo igjwegopjwr epogwjrg powrejpgoirejovm jvgwpoiejvpnijv wgojpgwpvwjwprenj"
                    //wrapMode: Text.wrapAnywhere
                    elide: Text.ElideRight
                }
            }
        }

        Rectangle { color: "red"; width: 200; height: 200 }
        Rectangle { color: "red"; width: 200; height: 200 }
        Rectangle { color: "red"; width: 200; height: 200 }
        Rectangle { color: "red"; width: 200; height: 200 }
        Rectangle { color: "red"; width: 200; height: 200 }
        Rectangle { color: "red"; width: 200; height: 200 }
    }
}
