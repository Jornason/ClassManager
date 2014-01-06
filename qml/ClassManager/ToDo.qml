import QtQuick 2.0
//Load listmodel from js, when modified, update db from js
import "modelcreator.js" as Mc

Rectangle {
    height: parent.height
    id:actionsmain
    Component.onCompleted: {
        Mc.actionlist(alist_model_id)
    }
    Component {
        id: adelegate
        Column {

            Rectangle{
                id: rec
                color: color
                width: 50
                height: 50
                MouseArea {
                    anchors.fill: parent;
                    onClicked: {
                       console.log(name);
                    }
                }
            }
        }

    }



    ListView {
        id: list
        width: 100; height: parent.height
        y: 25
        model: ListModel { id: alist_model_id }
        delegate: adelegate

    }
}
