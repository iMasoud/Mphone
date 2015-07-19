import QtQuick 2.0
import "NowTime.js" as Now

Item
{
    id:root

    property color hour_min_color: "white"
    property color sec_color: "#fb9903"
    property color pointers_color: "white"

    Item
    {
        id:anlogue_root
        width:height
        height:parent.height

        Repeater
        {
            id:analogue_circles
            anchors.fill:parent
            model:12

            Rectangle
            {
                width:(index%3==0)?parent.width/10:parent.width/15
                height:width
                x:((parent.width/2-width/2)*(Math.cos((index*30)*Math.PI/180))+parent.height/2)-width/2
                y:(-1*(parent.width/2-width/2)*(Math.sin((index*30)*Math.PI/180))+parent.height/2)-height/2
                radius:width/2
                color:pointers_color
            }
        }

        Image
        {
            id:analogue_hour
            width:parent.width*0.033 //width:parent.width*0.038
            height:width*7.466
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom:analogue_circle_white.bottom
            anchors.bottomMargin: analogue_circle_white.height/2
            source:"qrc:/clock-widget-hour.png"

            transform: Rotation
                    {
                        id: anlogue_hour_rotation
                        origin.x:analogue_hour.width/2
                        origin.y:analogue_hour.height
                        angle:Now.Hours()%12*30+Now.Minutes()/2

                        Behavior on angle
                        {
                            RotationAnimation
                            {
                                direction:RotationAnimation.Shortest
                            }
                        }
                    }
        }

        Image
        {
            id:analogue_minute
            width:parent.width*0.033 //width:parent.width*0.038
            height:width*11.875
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom:analogue_circle_white.bottom
            anchors.bottomMargin: analogue_circle_white.height/2
            source:"qrc:/clock-widget-minute.png"

            transform: Rotation
                    {
                        id: anlogue_minute_rotation
                        origin.x:analogue_minute.width/2
                        origin.y:analogue_minute.height
                        angle:Now.Minutes()*6

                        Behavior on angle
                        {
                            RotationAnimation
                            {
                                direction:RotationAnimation.Shortest
                            }
                        }
                    }
        }

        Rectangle
        {
            id:analogue_circle_white
            anchors.centerIn: parent
            width:parent.width*0.04
            height:width
            radius:width/2
            color:hour_min_color
        }

        Rectangle
        {
            id:analogue_second
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom:analogue_circle_white.bottom
            anchors.bottomMargin: -1*height*3/17 //-analogue_circle_white.height/2
            width:parent.width*0.01
            height:parent.height*17/30
            radius:width/2
            color:sec_color

            transform: Rotation
                    {
                        id: anlogue_second_rotation
                        origin.x:analogue_second.width/2
                        origin.y:analogue_second.height-analogue_second.height*3/17-analogue_circle_white.height/2
                        angle:Now.Seconds()*6

                        Behavior on angle
                        {
                            RotationAnimation
                            {
                                direction:RotationAnimation.Shortest
                            }
                        }
                    }
        }

        Rectangle
        {
            id:analogue_circle_gold
            anchors.centerIn: parent
            width:analogue_circle_white.width/1.5
            height:width
            radius:width/2
            color:sec_color
        }

        Rectangle
        {
            id:analogue_circle_black
            anchors.centerIn: analogue_circle_white
            width:analogue_circle_gold.width/2
            height:width
            radius:width/2
            color:"black"
        }

        Timer
        {
            id:analogue_timer
            running:true
            interval:1000
            repeat:true
            onTriggered:
            {
                anlogue_second_rotation.angle=Now.Seconds()*6
                anlogue_minute_rotation.angle=Now.Minutes()*6
                anlogue_hour_rotation.angle=Now.Hours()%12*30+Now.Minutes()/2
            }
        }
    }
}
