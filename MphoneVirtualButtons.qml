import QtQuick 2.0

Item
{
    id:buttons_bar

    Rectangle
    {
        anchors.fill:parent
        color:Qt.rgba(0,0,0,0.5)

        Rectangle
        {
            id:buttons_bar_back_rect
            width:parent.width/3.5
            height:parent.height
            anchors.left:parent.left
            anchors.leftMargin:parent.width/14
            color:Qt.rgba(0,0,0,0)

            Image
            {
                id:buttons_bar_back_img
                source:"qrc:/back.png"
                anchors.centerIn:parent
                sourceSize.width:height
                sourceSize.height:parent.height
            }

            Mtap{}
        }

        Rectangle
        {
            id:buttons_bar_home_rect
            width:parent.width/3.5
            height:parent.height
            anchors.left:buttons_bar_back_rect.right
            color:Qt.rgba(0,0,0,0)

            Image
            {
                id:buttons_bar_home_img
                source:"qrc:/home.png"
                anchors.centerIn:parent
                sourceSize.width:height
                sourceSize.height:parent.height

            }

            Mtap
            {

            }
        }

        Rectangle
        {
            id:buttons_bar_options_rect
            width:parent.width/3.5
            height:parent.height
            anchors.left:buttons_bar_home_rect.right
            color:Qt.rgba(0,0,0,0)

            Image
            {
                id:buttons_bar_options_img
                source:"qrc:/options.png"
                anchors.centerIn:parent
                sourceSize.width:height
                sourceSize.height:parent.height

            }

            Mtap{}
        }
    }
}
