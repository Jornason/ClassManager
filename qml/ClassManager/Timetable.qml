import QtQuick 2.0
import "modelcreator.js" as Mc
//import Qt.labs.gestures 1.0


Rectangle {
    width: parent.width
    height: parent.height
    property int days:6
    property int hours: 9
    property int w: width/days
    property int h: height/(hours+1)
    focus: true //back button
    Rectangle{
        id: header
        width: gtimetable.width
        height: 25//parent.height-10*h
        color: "grey"
        Text{
            id: maint
            text: "Main > "
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{
                console.log(header.bottom)
                pageLoader.source = "main.qml"
            }
        }
        Text{
            anchors.left: maint.right
            text: "Timetable"
        }

    }


//Load days,hours, model from javascript
    Grid{
        id: gtimetable
        columns: days
        rows: hours
        spacing: 5
//'        anchors.top: header.bottom
        y: header.y+header.height+5
        Repeater {
            model: Mc.timetable()
            Rectangle {
                width: w
                height: h

                radius: 3

                color: modelData != ""? "lightBlue":"gray"

                Text {
                    anchors.centerIn: parent
                    text: modelData
                }

                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if ((index >= days) && (index % days != 0) && (modelData != "")) console.log(modelData)
                        pageLoader.source = "ClassManagement.qml"
                    }
                }
            }
        }
 /*    GestureArea {
         anchors.fill: parent
         onSwipe: console.log("swipe angle=",me.gesture.swipeAngle)
     }
     */
    }
    Keys.onReleased: {
        if (event.key === Qt.Key_Back) {
            console.log("Back button captured - wunderbar !")
            event.accepted = true
            pageLoader.source = "main.qml"
        }
    }
}
