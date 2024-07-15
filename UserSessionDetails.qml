import QtQuick

QtObject {
    id: user_session_details
    property string page: ""

    onPageChanged: {
        mainStack.replace(page)
    }
}
