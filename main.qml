import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2

ApplicationWindow
{
    title: qsTr("Mphone v0.1 (Alpha)")
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    visible: true

    MainForm
    {
        anchors.fill: parent

        MphoneLauncher
        {
            anchors.fill:parent
        }
    }
}
