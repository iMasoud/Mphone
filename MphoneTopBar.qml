import QtQuick 2.0
import "NowTime.js" as Now

Item
{
    property bool transparency:false
    property string careerName: "No Career"
    property string careerGeneration: "N/A"
    property real antennaPercentage: 0

    id:mphoneTopBar_root

    Rectangle
    {
        id:mphoneTopBar_bg
        anchors.fill:parent
        color:Qt.rgba(0, 0, 0, (transparency==true)?0:1)

        Item
        {
            width:parent.width
            height:parent.height*15/19
            anchors.verticalCenter: parent.verticalCenter

            Text
            {
                id:mphoneTopBar_career
                x:parent.width/100
                anchors.baseline: parent.bottom
                anchors.baselineOffset: -1*font.pixelSize*0.2
                text:careerName
                font.pixelSize: parent.height*0.857
                font.family:"Arial"
                color:"white"
            }

            Text
            {
                id:mphoneTopBar_career_generation
                anchors.top:parent.top
                anchors.right:mphoneTopBar_antenna.left
                text:careerGeneration
                font.pixelSize: parent.height/2
                font.family:"Arial"
                color:"white"
            }

            Item
            {
                id:mphoneTopBar_antenna
                width:height*1.25
                height:parent.height*0.9
                anchors.right:mphoneTopBar_battery.left
                anchors.rightMargin: height/2.5
                anchors.bottom:parent.bottom

                Rectangle
                {
                    id:mphoneTopBar_one_quarter
                    width:parent.width/5
                    height:parent.height/4
                    anchors.bottom:parent.bottom
                    anchors.left:parent.left
                    color:Qt.rgba(1, 1, 1, (antennaPercentage>=25)?1:0.25)
                }

                Rectangle
                {
                    id:mphoneTopBar_two_quarter
                    width:parent.width/5
                    height:parent.height/2
                    anchors.bottom:parent.bottom
                    anchors.left:mphoneTopBar_one_quarter.right
                    anchors.leftMargin:parent.width/15
                    color:Qt.rgba(1, 1, 1, (antennaPercentage>=50)?1:0.25)
                }

                Rectangle
                {
                    id:mphoneTopBar_three_quarter
                    width:parent.width/5
                    height:parent.height*3/4
                    anchors.bottom:parent.bottom
                    anchors.left:mphoneTopBar_two_quarter.right
                    anchors.leftMargin:parent.width/15
                    color:Qt.rgba(1, 1, 1, (antennaPercentage>=75)?1:0.25)
                }

                Rectangle
                {
                    id:mphoneTopBar_four_quarter
                    width:parent.width/5
                    height:parent.height
                    anchors.bottom:parent.bottom
                    anchors.left:mphoneTopBar_three_quarter.right
                    anchors.leftMargin:parent.width/15
                    color:Qt.rgba(1, 1, 1, (antennaPercentage>=100)?1:0.25)
                }
            }

            Item
            {
                id:mphoneTopBar_battery
                width:height*2/3
                height:parent.height*0.9
                anchors.right:mphoneTopBar_clock.left
                anchors.rightMargin: height/2.5
                anchors.bottom:parent.bottom

                Rectangle
                {
                    id:battery_top
                    width:parent.width/2.5
                    height:parent.height/8
                    anchors.top:parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    color:"white"
                }

                Rectangle
                {
                    id:battery_body
                    width:parent.width
                    height:parent.height*7/8
                    anchors.top:battery_top.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    color:"white"
                }
            }

            Text
            {
                id:mphoneTopBar_clock
                anchors.right:mphoneTopBar_ampm.left
                anchors.rightMargin:parent.height/6
                anchors.baseline:parent.bottom
                anchors.baselineOffset: -1*font.pixelSize*0.2
                text:((Now.Hours()>12)?(Now.Hours()%12):(Now.Hours())) + ":" + ((Now.Minutes()>9)?"":"0") + Now.Minutes()
                font.pixelSize: parent.height*0.857
                font.family:"Arial"
                color:"white"

                Timer
                {
                    id:mphoneTopBar_clock_timer
                    interval:1000
                    repeat:true
                    running:true
                    onTriggered:
                    {
                        parent.text=((Now.Hours()>12)?(Now.Hours()%12):(Now.Hours())) + ":" + ((Now.Minutes()>9)?"":"0") + Now.Minutes()
                    }
                }
            }

            Text
            {
                id:mphoneTopBar_ampm
                anchors.right:parent.right
                anchors.rightMargin:parent.height/4
                anchors.baseline:parent.bottom
                anchors.baselineOffset: -1*font.pixelSize*0.2
                text:(Now.Hours()>12)?"PM":"AM"
                font.pixelSize: parent.height*0.75
                font.family:"Arial"
                color:"white"
            }
        }
    }
}
