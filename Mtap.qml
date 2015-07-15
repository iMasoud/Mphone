import QtQuick 2.0

Item
{
    id:mtap_root
    anchors.fill:parent
    clip:true

    MouseArea
    {
        id:mtap_mouse
        anchors.fill: parent
        onClicked:
        {
            mtap_circle.x=mouse.x-mtap_circle.width/2
            mtap_circle.y=mouse.y-mtap_circle.height/2
            mtap_animation.running=false
            mtap_animation.running=true
        }
    }

    Rectangle
    {
        id:mtap_circle
        width:(parent.width>parent.height)?parent.height:parent.width
        height:width
        radius:width/2
        opacity:0
    }

    ParallelAnimation
    {
        id:mtap_animation
        NumberAnimation
        {
            target: mtap_circle
            property: "scale"
            from:1 ; to:(parent.width>parent.height)?parent.width/parent.height:parent.height/parent.width
            duration: 1000
            easing.type: Easing.OutExpo
        }
        NumberAnimation
        {
            target: mtap_circle
            property: "opacity"
            from:0.75 ; to:0
            duration: 1000
            easing.type: Easing.OutExpo
        }
        running:false
    }
}
