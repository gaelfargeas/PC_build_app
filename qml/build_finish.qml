import QtQuick 2.0

Item {
    id :    build_finish_grid_element
    width: 400
    height: 240

    property string component_name : ""
    property int type_index: 0

    property Item main_script_object


    Rectangle {
        id: background
        anchors.fill: parent
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 20

        color: "lightgray"
        border.color: "white"
        border.width: 5
        radius: 20


        Text {
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WrapAnywhere
            id:  build_finish_grid_element_name
            text: component_name
            clip: true
            color: 'blue'

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    main_script_object.set_component_index(type_index)
                    main_script_object.load_component_grid(type_index)
                }
            }
        }
    }

}