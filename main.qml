import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("simpleQalc")
    width: 320
    height: 230
    visible: true

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
//            MenuItem {
//                text: qsTr("&Open")
//                onTriggered: messageDialog.show(qsTr("Open action triggered"));
//            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }

    Button {
        id: button1
        x: 201
        y: 11
        width: 84
        height: 29
        text: qsTr("Button")
        onClicked:messageDialog.show(qsTr("Open action triggered"));
    }

    TextField {
        id: textField1
        x: 22
        y: 11
        width: 173
        height: 29
        placeholderText: qsTr("Text Field")
    }

    TextArea {
        id: textArea1
        x: 22
        y: 46
        width: 263
        height: 130
    }


}
