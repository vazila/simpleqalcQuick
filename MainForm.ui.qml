import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    width: 640
    height: 480

//    property alias button3: button3
//    property alias button2: button2
//    property alias button1: button1

    RowLayout {
        id: rowLayout1
        width: 441
        height: 195
        anchors.verticalCenterOffset: 17
        anchors.horizontalCenterOffset: -28
        anchors.centerIn: parent

        Button {
            id: button1
            text: qsTr("Press Me 1")
            anchors.right: parent.right
            anchors.rightMargin: 313
        }

        TextField {
            id: textField1
            anchors.left: parent.left
            anchors.leftMargin: 192
            placeholderText: qsTr("Text Field")
        }
    }
}
