import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Window 2.2


Rectangle {
    property int x_size: 5
    property int y_size: 8

    id: scenario
    visible: true
    anchors.top: mainMenu.bottom
    width: parent.width
    height: parent.height

    Grid {
        id: scenario_grid
        x: 10
        y: 10
        rows: y_size
        columns: x_size
        spacing: 1
        anchors.centerIn: scenario

        property int piece_size: {

            var line_size = window.height/scenario_grid.rows
            var column_size = window.width/scenario_grid.columns

            return line_size < column_size ? line_size: column_size
        }

        Repeater {
            model: parent.rows * parent.columns
            Piece{
                size: scenario_grid.piece_size
            }
        }
    }

}

