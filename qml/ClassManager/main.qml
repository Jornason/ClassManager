import QtQuick 2.0
import QtQuick.Layouts 1.1
//import MainMenuIcon

Item{
    width: 360
    height: 360
    Loader {
        // Explicitly set the size of the Loader to the parent item's size
        id:pageLoader
        anchors.fill: parent
        sourceComponent: mm
    }
    
    Component{
        id: mm
        
        Rectangle {
            id:mainMenu
            width: 360
            height: 360
            gradient: Gradient {
                GradientStop { position: 0.0; color: "darkslategrey" }
                GradientStop { position: 0.5; color: "slategrey" }
                GradientStop { position: 1.0; color: "darkslategrey" }
            }
            Text{
                height: parent.height/5
                //                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                text: "ClassManager"
                font.pointSize: 24; font.bold: true
            }
            Grid {
                id: grid
                columns: mainMenu.width>mainMenu.height ? 3:2
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                flow: Grid.LeftToRight
                spacing: 25
                //        rowSpacing: 25
                //        columnSpacing: 25
                
     /*                 MainMenuIcon{
                          width:mainMenu.width/3
            optiontext: "Froga 1"
            image: "http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-user-online-icon.png"
        }
        MainMenuIcon{
            optiontext: "Froga   2"
            image: "http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-user-online-icon.png"
        }
        MainMenuIcon{
            optiontext: "Froga    3"
            image: "http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-user-online-icon.png"
        }
        MainMenuIcon{
            optiontext: "Froga      4"
            image: "http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-user-online-icon.png"
        }
        MainMenuIcon{
            optiontext: "Froga       5"
            image: "http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-user-online-icon.png"
        }
        MainMenuIcon{
            optiontext: "Froga         6"
            image: "http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-user-online-icon.png"
        }
        */       Rectangle{
                    width: mainMenu.width/(grid.columns+1)
                    height: mainMenu.height/5
                    border.color: "black"
                    border.width: 10
                    radius: 10
                    gradient: Gradient {
                        GradientStop { position: 0.5; color: "slategrey" }
                        GradientStop { position: 0.0; color: "darkslategrey" }
                    }
                    Column{
                        anchors.centerIn: parent.Center
                        height: parent.height
                        width: parent.width
                        Image{
                            height: parent.height*3/5
                            width: parent.width
                            source:"http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-user-online-icon.png";
                            
                        }
                        Text{
                            height: parent.height/5
                            //                width: parent.width
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "Timetable"
                        }
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked:pageLoader.source = "Timetable.qml"
                    }
                    
                }
                
                Rectangle{
                    width: mainMenu.width/(grid.columns+1)
                    height: mainMenu.height/5
                    border.color: "black"
                    border.width: 10
                    radius: 10
                    gradient: Gradient {
                        GradientStop { position: 0.5; color: "slategrey" }
                        GradientStop { position: 0.0; color: "darkslategrey" }
                    }
                    Column{
                        anchors.centerIn: parent
                        height: parent.height
                        width: parent.width
                        Image{
                            height: parent.height*3/5
                            width: parent.width
                            source:"http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-user-online-icon.png";
                            
                        }
                        Text{
                            height: parent.height/5
                            //                width: parent.width
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "Groups"
                        }
                    }
                    
                }
                
                Rectangle{
                    width: mainMenu.width/(grid.columns+1)
                    height: mainMenu.height/5
                    border.color: "black"
                    border.width: 10
                    radius: 10
                    gradient: Gradient {
                        GradientStop { position: 0.5; color: "slategrey" }
                        GradientStop { position: 0.0; color: "darkslategrey" }
                    }
                    Column{
                        anchors.centerIn: parent
                        height: parent.height
                        width: parent.width
                        Image{
                            height: parent.height*3/5
                            width: parent.width
                            source:"http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-user-online-icon.png";
                            
                        }
                        Text{
                            height: parent.height/5
                            //                width: parent.width
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "Attendance"
                        }
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked:pageLoader.source = "Attendance.qml"
                    }
                    
                }
                
                Rectangle{
                    width: mainMenu.width/(grid.columns+1)
                    height: mainMenu.height/5
                    border.color: "black"
                    border.width: 10
                    radius: 10
                    gradient: Gradient {
                        GradientStop { position: 0.5; color: "slategrey" }
                        GradientStop { position: 0.0; color: "darkslategrey" }
                    }
                    Column{
                        anchors.centerIn: parent
                        height: parent.height
                        width: parent.width
                        Image{
                            height: parent.height*3/5
                            width: parent.width
                            source:"http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-user-online-icon.png";
                            
                        }
                        Text{
                            height: parent.height/5
                            //                width: parent.width
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "Aukera4"
                        }
                    }
                    
                }
                Rectangle{
                    width: mainMenu.width/(grid.columns+1)
                    height: mainMenu.height/5
                    border.color: "black"
                    border.width: 10
                    radius: 10
                    gradient: Gradient {
                        GradientStop { position: 0.5; color: "slategrey" }
                        GradientStop { position: 0.0; color: "darkslategrey" }
                    }
                    Column{
                        anchors.centerIn: parent
                        height: parent.height
                        width: parent.width
                        Image{
                            height: parent.height*3/5
                            width: parent.width
                            source:"http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-user-online-icon.png";
                            
                        }
                        Text{
                            height: parent.height/5
                            //                width: parent.width
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "Aukera 5"
                        }
                    }
                    
                }
                Rectangle{
                    width: mainMenu.width/(grid.columns+1)
                    height: mainMenu.height/5
                    border.color: "black"
                    border.width: 10
                    radius: 10
                    gradient: Gradient {
                        GradientStop { position: 0.5; color: "slategrey" }
                        GradientStop { position: 0.0; color: "darkslategrey" }
                    }
                    Column{
                        anchors.centerIn: parent
                        height: parent.height
                        width: parent.width
                        Image{
                            height: parent.height*3/5
                            width: parent.width
                            source:"http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-user-online-icon.png";
                            
                        }
                        Text{
                            height: parent.height/5
                            //                width: parent.width
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "Settings"
                        }
                    }
                    
                }
                
            }
        }
    }
}
