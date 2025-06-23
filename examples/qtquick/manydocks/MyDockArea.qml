import QtQuick 2.6
import QtQuick.Controls
import QtQuick.Layouts
import com.kdab.dockwidgets 2.0 as KDDW

KDDW.DockingArea {
    id: root

    KDDW.DockWidget {
        id: dock4
        uniqueName: root.uniqueName + "dock4" // Each dock widget needs a unique id
        source: ":/Another.qml"

        onIsOpenChanged: {
            // Just an example of detecting when a dockwidget is closed
            console.log("Dock4 is open ? " + isOpen);
        }
    }

    KDDW.DockWidget {
        id: dock5
        uniqueName: root.uniqueName + "dock5"
        Rectangle {
            id: guest
            color: "#2E8BC0"
            anchors.fill: parent
        }
    }

    KDDW.DockWidget {
        id: dock6
        uniqueName: root.uniqueName + "dock6"
        Rectangle {
            color: "#2E8BC0"
            anchors.fill: parent
        }
    }
    Component.onCompleted: {
        // Add dock4 to the Bottom location
        root.addDockWidget(dock4, KDDW.KDDockWidgets.Location_OnBottom);

        // Add dock5 to the left of dock4
        root.addDockWidget(dock5, KDDW.KDDockWidgets.Location_OnRight, dock4);

        // Adds dock6 but specifies a preferred initial size and it starts hidden
        // When toggled it will be shown on the desired dock location.
        // See MainWindowInstantiator_p.h for the API
        root.addDockWidget(dock6, KDDW.KDDockWidgets.Location_OnLeft);
    }
}
