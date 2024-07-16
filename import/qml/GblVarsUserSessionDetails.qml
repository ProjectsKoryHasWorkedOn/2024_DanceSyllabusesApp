import QtQuick

QtObject {
    id: user_session_details

    // Keep track of what page we want the user to be on
    property string page: ""

    onPageChanged: {
        // Make sure the user is on the page we want them to be on
        mainStack.replace(page)
    }
}
