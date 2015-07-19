import QtQuick 2.0

Item
{
    id:mphoneLauncher_root

    Image
    {
        id:mphoneLauncher_wallapper
        anchors.fill:parent
        source:(parent.width>parent.height)?"qrc:/iPad.jpg":"qrc:/iPhone.jpg"
    }

    MphoneTopBar
    {
        id:mphoneLauncher_topBar
        width:parent.width
        height:parent.height*0.038
        transparency:true
    }

    MphoneClockWidget
    {
        width:height*2.5
        height:parent.height/5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:mphoneLauncher_topBar.bottom
        anchors.topMargin:height/2
    }

    MphoneVirtualButtons
    {
        id:mphoneLauncher_virtualButtons
        width:parent.width
        height:parent.height*0.075
        anchors.bottom:parent.bottom
    }

    MphoneDock
    {
        id:mphoneLauncher_dock
        width:mphoneLauncher_virtualButtons.width
        height:mphoneLauncher_wallapper.height/7
        anchors.bottom:mphoneLauncher_virtualButtons.top
    }
}
