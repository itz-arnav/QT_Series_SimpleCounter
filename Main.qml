import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

Window {
    width: 800
    height: 600
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        anchors.fill: parent

        gradient: Gradient {
            orientation: Gradient.Horizontal
            GradientStop { position: 1.0; color: "#ff5c8a" }
            GradientStop { position: 0.5; color: "#e500a4" }
            GradientStop { position: 0.0; color: "#8a2387" }
        }
    }

    Rectangle {
        anchors.top: parent.top
        anchors.topMargin: 40
        anchors.horizontalCenter: parent.horizontalCenter

        color: Qt.rgba(255, 255, 255, 0.2)
        radius: 10

        width: label.width + 2 * padding
        height: label.height + padding

        property int padding: 20

        Label {
            id: label
            anchors.centerIn: parent
            text: "A Simple Button Counter"
            padding: 15
            font.pointSize: 20
            font.bold: true
            color: "#fff"
            font.capitalization: Font.AllUppercase
        }
    }

    Rectangle{

        anchors.centerIn: parent
        width: 400
        height: 200
        color: Qt.rgba(255, 255, 255, 0.2)
        radius: 10


        Label{
            id: counterValue
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 30
            text: "0"
            color: "#fff"
            font.pointSize: 18
            font.bold: true
        }

        Row {
            spacing: 30
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                id: decrementButton
                topPadding: 10
                bottomPadding: 10
                leftPadding: 20
                rightPadding: 20
                contentItem: Label{
                    text: "Decrement"
                    color: "#fff"
                    font.pointSize: 15
                }

                hoverEnabled: true

                background: Rectangle{
                    anchors.fill: parent
                    color: Qt.rgba(255, 255, 255, 0.2)
                    radius: 10
                }

                onClicked: {
                    counterValue.text = Number(counterValue.text) - 1
                }
            }

            Button {
                id: incrementButton
                topPadding: 10
                bottomPadding: 10
                leftPadding: 20
                rightPadding: 20
                contentItem: Label{
                    text: "Increment"
                    color: "#fff"
                    font.pointSize: 15
                }

                background: Rectangle{
                    anchors.fill: parent
                    color: Qt.rgba(255, 255, 255, 0.2)
                    radius: 10
                }

                onClicked: {
                    counterValue.text = Number(counterValue.text) + 1
                }
            }
        }
    }

}
