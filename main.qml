import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3
import QtDataVisualization 1.3
import QtCharts 2.2

Window {
    title: qsTr("")
    visibility: "Maximized"
    width: 800
    height: 480
    color: "#dc6009"
    visible: true

    property var numGFT: 25
    property var curDFT: 0

    GridLayout {
        id: homeGrid
        anchors.rightMargin: 5
        anchors.leftMargin: 5
        anchors.bottomMargin: 5
        anchors.topMargin: 5
        rows: 3
        columns: 3
        anchors.fill: parent
        Button {
            id: buttonOT
            text: qsTr("")
            flat: false
            highlighted: true
            display: AbstractButton.IconOnly
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout {
                id: columnLayout
                anchors.fill: parent

                Text {
                    id: element
                    color: "#dc6009"
                    text: qsTr("Outside Temp")
                    horizontalAlignment: Text.AlignHCenter
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    font.pixelSize: 24
                }

                Text {
                    id: elementOT
                    color: "#dc6009"
                    text: qsTr("40.0 c")
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    font.pixelSize: 75
                }
            }
        }

        Button {
            id: buttonGFT
            text: qsTr("Button")
            display: AbstractButton.IconOnly
            highlighted: true
            Layout.fillHeight: true
            Layout.fillWidth: true
            onClicked: rectangle.visible = true

            ColumnLayout {
                id: columnLayout1
                anchors.fill: parent
                Text {
                    id: element2
                    color: "#dc6009"
                    text: qsTr("Ground Floor Temp ºC")
                    font.pixelSize: 24
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    id: elementGFT
                    color: "#dc6009"
                    text: qsTr(""+curDFT)
                    font.pixelSize: 75
                    font.bold: true
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }



        Button {
            id: buttonFFT
            text: qsTr("Button")
            display: AbstractButton.IconOnly
            highlighted: true
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout {
                id: columnLayout2
                anchors.fill: parent
                Text {
                    id: element4
                    color: "#dc6009"
                    text: qsTr("First Floor Temp")
                    font.pixelSize: 24
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    id: elementFFT
                    color: "#dc6009"
                    text: qsTr("22.0 c")
                    font.pixelSize: 75
                    font.bold: true
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        Button {
            id: buttonWHT
            text: qsTr("Button")
            display: AbstractButton.IconOnly
            highlighted: true
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout {
                id: columnLayout3
                anchors.fill: parent
                Text {
                    id: element6
                    color: "#dc6009"
                    text: qsTr("Water Heater Temp")
                    font.pixelSize: 24
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    id: elementWHT
                    color: "#dc6009"
                    text: qsTr("50.0 c")
                    font.pixelSize: 75
                    font.bold: true
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        Button {
            id: buttonGB
            text: qsTr("Button")
            display: AbstractButton.IconOnly
            highlighted: true
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout {
                id: columnLayout4
                anchors.fill: parent
                Text {
                    id: element8
                    color: "#dc6009"
                    text: qsTr("Gas Boiler")
                    font.pixelSize: 24
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    id: elementGB
                    color: "#dc6009"
                    text: qsTr("OFF")
                    font.pixelSize: 75
                    font.bold: true
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        Button {
            id: buttonTS
            text: qsTr("Button")
            display: AbstractButton.IconOnly
            highlighted: true
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout {
                id: columnLayout5
                anchors.fill: parent
                Text {
                    id: element10
                    color: "#dc6009"
                    text: qsTr("Thermostat")
                    font.pixelSize: 24
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    id: elementTS
                    color: "#dc6009"
                    text: qsTr("Cool")
                    font.pixelSize: 75
                    font.bold: true
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        Button {
            id: buttonSS
            text: qsTr("Button")
            display: AbstractButton.IconOnly
            highlighted: true
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout {
                id: columnLayout6
                anchors.fill: parent
                Text {
                    id: element12
                    color: "#dc6009"
                    text: qsTr("Security Systems")
                    font.pixelSize: 24
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    id: elementSS
                    color: "#dc6009"
                    text: qsTr("ON")
                    font.pixelSize: 75
                    font.bold: true
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        Button {
            id: buttonLi
            text: qsTr("Button")
            display: AbstractButton.IconOnly
            highlighted: true
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout {
                id: columnLayout7
                anchors.fill: parent
                Text {
                    id: element14
                    color: "#dc6009"
                    text: qsTr("Lights")
                    font.pixelSize: 24
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    id: elementLi
                    color: "#dc6009"
                    text: qsTr("Dim")
                    font.pixelSize: 75
                    font.bold: true
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        Button {
            id: buttonAZ
            text: qsTr("Button")
            display: AbstractButton.IconOnly
            highlighted: true
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout {
                id: columnLayout8
                anchors.fill: parent
                Text {
                    id: element16
                    color: "#dc6009"
                    text: qsTr("Add Zone")
                    font.pixelSize: 24
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    id: element17
                    color: "#dc6009"
                    text: qsTr("+")
                    font.pixelSize: 75
                    font.bold: true
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }


    }

    Rectangle {
        id: rectangle
        color: "#000000"
        visible: false
        anchors.fill: parent

        GridLayout {
            id: gridLayout
            anchors.rightMargin: 5
            anchors.leftMargin: 5
            anchors.bottomMargin: 5
            anchors.topMargin: 5
            rows: 3
            columns: 2
            anchors.fill: parent

            ColumnLayout {
                id: columnLayout9
                width: 100
                height: 100
                Layout.fillHeight: true
                Layout.fillWidth: true

                Text {
                    id: element1
                    color: "#dc6009"
                    text: qsTr("Current Temp ºC")
                    font.pixelSize: 24
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    id: elementOT1
                    color: "#dc6009"
                    text: qsTr(""+curDFT)
                    font.pixelSize: 75
                    font.bold: true
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            ColumnLayout {
                id: columnLayout10
                width: 100
                height: 100
                Layout.fillHeight: true
                Layout.fillWidth: true

                Text {
                    id: element3
                    color: "#dc6009"
                    text: qsTr("Target Temp")
                    font.pixelSize: 24
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    id: elementOT2
                    color: "#dc6009"
                    text: qsTr(numGFT + ".0 c")
                    font.pixelSize: 75
                    font.bold: true
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            Button {
                id: button
                text: qsTr("")
                highlighted: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: numGFT = numGFT - 1

                Text {
                    id: element5
                    color: "#dc6009"
                    text: qsTr("-")
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.bold: true
                    font.pixelSize: 75
                }
            }

            Button {
                id: button1
                text: qsTr("")
                highlighted: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: numGFT = numGFT + 1

                Text {
                    id: element7
                    color: "#dc6009"
                    text: qsTr("+")
                    font.bold: true
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 75
                }
            }

            Button {
                id: button2
                text: qsTr("")
                highlighted: true
                onClicked: rectangle.visible = false

                Text {
                    id: element9
                    color: "#dc6009"
                    text: qsTr("<- Back")
                    font.bold: true
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 20
                }
            }


        }
    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: updates()
        function updates()
        {
            curDFT = main.setTemp(curDFT)
            if(numGFT > curDFT)
            {
                elementTS.text = "HEAT"
            }
            else
            {
                elementTS.text = "COOL"
            }
        }
    }

}

/*##^##
Designer {
    D{i:3;anchors_height:100;anchors_width:100}D{i:7;anchors_height:100;anchors_width:100}
D{i:11;anchors_height:100;anchors_width:100}D{i:15;anchors_height:100;anchors_width:100}
D{i:19;anchors_height:100;anchors_width:100}D{i:23;anchors_height:100;anchors_width:100}
D{i:27;anchors_height:100;anchors_width:100}D{i:31;anchors_height:100;anchors_width:100}
D{i:35;anchors_height:100;anchors_width:100}D{i:1;anchors_height:100;anchors_width:100;anchors_x:319;anchors_y:190}
D{i:39;anchors_height:100;anchors_width:100}D{i:38;anchors_height:200;anchors_width:200}
}
##^##*/
