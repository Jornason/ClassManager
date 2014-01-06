import QtQuick 2.0
Item{
    property string optiontext:"Froga"
    property url image:"http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-user-online-icon.png"
    Rectangle{
//        width: parent.width//3//(parent.columns+1)
//        height: parent.height//5
        border.width: 10
        border.color: "green"
        gradient: Gradient {
            GradientStop { position: 0.5; color: "slategrey" }
            GradientStop { position: 0.0; color: "darkslategrey" }
        }
        Column{

            height: parent.height
            width: parent.width
            Image{
                height: parent.height*3/5
                width: parent.width
                source: image

            }
            Text{
                height: parent.height/5
                anchors.horizontalCenter: parent.horizontalCenter
                text: optiontext
            }
        }

    }
}
