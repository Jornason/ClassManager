import QtQuick 2.0

Rectangle {
    width: 500//parent.width
    height: 62
    color: "#D8D8D8"
    Rectangle{

        Image{
            id: icon
            source: "/home/asier/projects/ClassManager/icon.png"
        }
    }
    Text {
        text: "AppName"
        horizontalAlignment: icon.Right
    }
    Image{
        source: "/home/asier/projects/ClassManager/icon.png"
        horizontalAlignment: parent.Right
        MouseArea{
           // onClicked:
        }
    }
}
