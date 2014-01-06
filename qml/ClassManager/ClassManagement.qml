import QtQuick 2.0

Rectangle {
    property string group
    property string time
    width: parent.width
    height: parent.height
    focus: true //back button
    Rectangle{
        id: header
        z:1
        width: parent.width
        height: 50//parent.height-10*h
        color: "grey"
        Text{
            id: maint
            anchors.verticalCenter: parent.verticalCenter
            text: "Main > Timetable >"
            font.pixelSize: 16
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{
                console.log(header.bottom)
                pageLoader.source = "Timetable.qml"
            }
        }
        Text{
            anchors.left: maint.right
            anchors.verticalCenter: parent.verticalCenter
            text: "Class"
            font.pixelSize: 16
        }

    }
    Rectangle{
        id: options
        height: parent.height-header.height
        width: parent.width/20
        anchors{
            left: parent.left
            top: header.bottom
        }
        Actions{width:parent.width
        height:parent.height}
    }
    Rectangle{
        id: list
        height: parent.height-header.height
        width: parent.width/2
        anchors{
            left: options.right
            top: header.bottom
        }
        Attendance{}
    }
    Rectangle{
        id: todo
        color:"gray"
        height: parent.height-header.height
        width: parent.width*9/20
        anchors{
            left: list.right
            top: header.bottom
        }

    }
//http://qt-project.org/forums/viewthread/29366
    Keys.onReleased: {
        if (event.key === Qt.BackButton) {
            console.log("Back button captured - wunderbar !")
            pageLoader.source = "Timetable.qml"
            event.accepted = true
        }
    }
}
