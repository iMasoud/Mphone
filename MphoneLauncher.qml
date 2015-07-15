import QtQuick 2.0

Item
{
    id:mphoneLauncher_root

    Image
    {
        id:mphoneLauncher_wallapper
        anchors.fill:parent
        sourceSize.width:width
        sourceSize.height:height
        source:(parent.width>parent.height)?"qrc:/nexus_landscape.png":"qrc:/nexus_portrait.png"
    }

    MphoneTopBar
    {
        id:mphoneLauncher_topBar
        width:parent.width
        height:parent.height*0.038
        transparency:true
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

