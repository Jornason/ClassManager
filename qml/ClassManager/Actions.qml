import QtQuick 2.0
Rectangle{
    width: 100
    //   height: parent.height
    color: "gray"
    ListModel {
        id: actionsModel
        ListElement {name: "Berandu"; kolorea: "red"}
        ListElement {name: "Falta"; kolorea: "orange"}
        ListElement {name: "Hitzegin";kolorea: "blue"}
        ListElement {name: "Bestelakorik";kolorea: "yellow"}
        ListElement {name: "Etxeko Lana"; kolorea: "green"}
        ListElement {name: "Klaseko Lana"; kolorea: "pink"}
    }

    Component{
        id: copiedDelegate
        Item {
            height: 70;
            anchors {
                left: parent.left;
                right: parent.right;
            }

            Rectangle {
                id: kolor;
                color: kolorea;
                width: 40;
                radius: 5
                height: width;
                anchors {
                    top: parent.top;
                    margins: 10;
                    horizontalCenter: parent.horizontalCenter;
                }
            }

            Rectangle {
                id: action;
                color: "gray";
                width: 40;
                height: 15;
                anchors {
                    bottom: parent.bottom;
                    margins: 10;
                    horizontalCenter: parent.horizontalCenter;
                }

                Text {
                    text: name
                    anchors.horizontalCenter: parent.horizontalCenter;
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log(index)
                }
            }
        }
    }
    ListView{
        anchors.fill: parent
        model:actionsModel
        delegate: copiedDelegate
    }
}
