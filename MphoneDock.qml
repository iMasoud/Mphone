import QtQuick 2.0

Item
{
    id:mphoneDock_root

    Rectangle
    {
        id:mphoneDock_bar
        width:parent.width*0.8
        height:1
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Image
    {
        id:mphoneDock_icon_caller_highlight
        sourceSize.width:width
        sourceSize.height:height
        anchors.fill:mphoneDock_icon_caller
        source:"qrc:/Phone-icon-highlight.png"

        Behavior on scale
        {
            SpringAnimation
            {
                spring:2
                damping:.2
                duration:250
            }
        }
    }

    Image
    {
        id:mphoneDock_icon_caller
        width:height
        height:parent.height*8/13
        sourceSize.width:width
        sourceSize.height:height
        anchors.right:mphoneDock_icon_drawer.left
        anchors.rightMargin:width/4
        anchors.top:parent.top
        anchors.topMargin:height/4
        source:"qrc:/Phone-icon.png"

        Behavior on scale
        {
            SpringAnimation
            {
                spring:2
                damping:.2
                duration:250
            }
        }

        Behavior on opacity
        {
            SpringAnimation
            {
                spring:2
                damping:.2
                duration:250
            }
        }

        MouseArea
        {
            id:mphoneDock_icon_caller_mouse
            anchors.fill:parent
            onClicked:
            {
                parent.opacity=0.5
                parent.scale=0.75
                mphoneDock_icon_caller_highlight.scale=0.75
                mphoneDock_icon_caller_timer.running=true
            }
        }

        Timer
        {
            id:mphoneDock_icon_caller_timer
            interval:250
            running:false
            repeat:false
            onTriggered:
            {
                mphoneDock_icon_caller.opacity=1
                mphoneDock_icon_caller.scale=1
                mphoneDock_icon_caller_highlight.scale=1
                running=false
            }
        }
    }

    Image
    {
        id:mphoneDock_icon_drawer
        width:height
        height:parent.height*8/13
        sourceSize.width:width
        sourceSize.height:height
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:parent.top
        anchors.topMargin:height/4
        source:"qrc:/Drawer-icon.png"

        Behavior on scale
        {
            SpringAnimation
            {
                spring:2
                damping:.2
                duration:250
            }
        }

        Behavior on opacity
        {
            SpringAnimation
            {
                spring:2
                damping:.2
                duration:250
            }
        }

        MouseArea
        {
            id:mphoneDock_icon_drawer_mouse
            anchors.fill:parent
            onClicked:
            {
                parent.scale=0.75
                parent.opacity=0.75
                mphoneDock_icon_drawer_timer.running=true
            }
        }

        Timer
        {
            id:mphoneDock_icon_drawer_timer
            interval:250
            running:false
            repeat:false
            onTriggered:
            {
                parent.scale=1
                parent.opacity=1
                running=false
            }
        }
    }

    Image
    {
        id:mphoneDock_icon_messaging_highlight
        sourceSize.width:width
        sourceSize.height:height
        anchors.fill:mphoneDock_icon_messaging
        source:"qrc:/Messenger-icon-highlight.png"

        Behavior on scale
        {
            SpringAnimation
            {
                spring:2
                damping:.2
                duration:250
            }
        }
    }

    Image
    {
        id:mphoneDock_icon_messaging
        width:height
        height:parent.height*8/13
        sourceSize.width:width
        sourceSize.height:height
        anchors.left:mphoneDock_icon_drawer.right
        anchors.leftMargin:width/4
        anchors.top:parent.top
        anchors.topMargin:height/4
        source:"qrc:/Messenger-icon.png"

        Behavior on scale
        {
            SpringAnimation
            {
                spring:2
                damping:.2
                duration:250
            }
        }

        Behavior on opacity
        {
            SpringAnimation
            {
                spring:2
                damping:.2
                duration:250
            }
        }

        MouseArea
        {
            id:mphoneDock_icon_messaging_mouse
            anchors.fill:parent
            onClicked:
            {
                parent.opacity=0.5
                parent.scale=0.75
                mphoneDock_icon_messaging_highlight.scale=0.75
                mphoneDock_icon_messaging_timer.running=true
            }
        }

        Timer
        {
            id:mphoneDock_icon_messaging_timer
            interval:250
            running:false
            repeat:false
            onTriggered:
            {
                parent.opacity=1
                parent.scale=1
                mphoneDock_icon_messaging_highlight.scale=1
                running=false
            }
        }
    }
}
