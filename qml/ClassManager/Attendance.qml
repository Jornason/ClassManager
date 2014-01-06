import QtQuick 2.0
import "modelcreator.js" as Mc

Rectangle {
    property string group
    width: 200
    height: parent.height
    id:listmain
    Component.onCompleted: {
        Mc.studentslist(list_model_id)//,group
    }

    Rectangle {
        width: 200
        height: 50
        Text {
            text: Qt.formatDateTime(new Date(), "yyyy/MM/dd")
        }
    }


    Component{
        id: copiedDelegate
        Item {
            height: 80;
            opacity: isTicked=="True" ? 1 : 0.25
            anchors {
                left: parent.left;
                right: parent.right;
            }

            Rectangle {
                color: (model.index % 2 ? "black" : "white");
                opacity: 0.05;
                anchors.fill: parent;
            }
            Rectangle {
                id: avatar;
                color: "darkgray";
                width: 75;
                height: width;
                anchors {
                    left: parent.left;
                    margins: 10;
                    verticalCenter: parent.verticalCenter;
                }

                Image {
                    source: "1k005.png"//model.pictureUrl;
                    cache: true;
                    asynchronous: true;
                    sourceSize.width: width;
                    sourceSize.height: height;
                    anchors.fill: parent;
                }
            }
            Column {
                spacing: 2;
                anchors {
                    left: avatar.right;
                    right: attendance.left;
                    margins: 10;
                    verticalCenter: parent.verticalCenter;
                }

                Row {
                    spacing: 5;
                    anchors {
                        left: parent.left;
                        right: parent.right;
                    }

                    Text {
                        text: name;
                        color: "black";
                        font {
//                          family: fontName;
                            pixelSize: 18;
                            capitalization: Font.Capitalize;
                        }
                    }
                    Text {
                        text: surname;
                        elide: Text.ElideRight;
                        color: "black";
                        font {
//                          family: fontName;
                            pixelSize: 18;
                            capitalization: Font.AllUppercase;
                        }
                    }
                }
                Text {
                    text: name+" "+surname;
                    color: "gray";
                    elide: Text.ElideRight;
                    textFormat: Text.PlainText;
                    font {
                        pixelSize: 16;
//                      family: fontName;
                    }
                    anchors {
                        left: parent.left;
                        right: parent.right;
                    }
                }
            }
            Rectangle {
                id: attendance;
//                color: "darkgray";
                width: 75;
                height: width;
                anchors {
                    right: parent.right;
                    margins: 10;
                    verticalCenter: parent.verticalCenter;
                }

                Image {
                    id: att
                    source: isTicked=="True" ? "tick.png" : "untick.png"
                    cache: true;
                    asynchronous: true;
                    sourceSize.width: width;
                    sourceSize.height: height;
                    anchors.fill: parent;
                }
                MouseArea {
                    anchors.fill: parent;
                    onClicked: {
                        isTicked=="True" ?  list_model_id.setProperty(index, "isTicked","False") :  list_model_id.setProperty(index, "isTicked", "True");
                    }
                }
            }
            MouseArea {
                anchors{
                 right: attendance.left
                 left: parent.left
                 top: parent.top
                 bottom: parent.bottom
                }
                onClicked: {
//                  currentProfileId = model.uid;
//                  showAltPage = true;
                    console.log(index)
                    Mc.savelist(list_model_id)
                }
            }
        }
    }

    Component {
        id: delegate
        Row {
            Image { source: "1k005.png"; height: list.width/7; width: list.width/7}
            Text { text: name + " " + surname}
            Image {
                id: tickBox
                height: list.width/7; width: list.width/7
                anchors.right: listmain.right
                source: isTicked ? "tick.png" : "untick.png"
                MouseArea {
                    anchors.fill: parent;
                    onClicked: {
                        isTicked ? isTicked="False" : isTicked="True";
                    }
                }
            }
        }

    }



    ListView {
        id: list
        width: 500; height: parent.height
        y: 25
        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
        model: ListModel { id: list_model_id }
        delegate: copiedDelegate

    }
}
