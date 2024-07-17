import QtQuick

QtObject {
    id: user_session_details

    // Keep track of what page we want the user to be on
    property string page: ""

    property bool hasUserLeftIntroScreens: false

    function pastTheIntroScreens(){
        // Debug message
        console.log("Past the intro screens")

        // Show navbar
        navbar_loader.show(navbar_to_load_in)
    }

    onPageChanged: {
        console.log(page)

        // Check if we've past the intro screens
        if(
            (page != "PageWelcome.qml") &&
            (page != "PageLogin.qml") &&
            (page != "PageSignUp.qml")
        ){
            hasUserLeftIntroScreens = true
        }

        if(hasUserLeftIntroScreens == true){
            pastTheIntroScreens()
        }

        // Make sure the user is on the page we want them to be on
        mainStack.replace(page)
    }
}
