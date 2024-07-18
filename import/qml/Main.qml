import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

Window {
    id: window
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Latin Dance Program")
    color: "#ffffff"

    GblVarsDefaultQMLClassValues {
        id: instance_of_default_qml_class_values
    }

    GblVarsUserDetails {
        id: instance_of_user_details
    }

    GblVarsUserSessionDetails{
        id: user_session_details_instance
    }

    ComponentSFXPlayer{
        id: instance_of_sfx_player
    }

    ComponentTitleBar{
        id: instance_of_title_bar
    }

    Item{


        Loader{
            id: navbar_loader
            sourceComponent: undefined

            function show(componentToShow){
             sourceComponent = componentToShow
            }

            function hide(){
                sourceComponent = undefined
            }

        }

        Component{
            id: navbar_to_load_in

            ComponentNavBar{
                id: instance_of_navigation_system
            }
        }


    }

    StackView {
        id: mainStack
        anchors.fill: parent

        Component.onCompleted: {
            // @todo: Check if user has logged in
            // if not logged in
            user_session_details_instance.page = "PageWelcome.qml"
            // else
            // user_session_details_instance.page = "PageProfile.qml"
        }
    }

}
