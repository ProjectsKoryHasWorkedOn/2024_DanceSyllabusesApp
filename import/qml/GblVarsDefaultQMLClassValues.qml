import QtQuick

QtObject {
    /* Base directory */
    readonly property string baseDirectory: "qrc:/Dance_Syllabuses/"

    /* Global sound controls */
    property bool soundEffectsMuted: false // Value can change. User controlled
    property string soundEffectsPlayerSoundFileLoadedIn: "" // Value can change

    /* Button styling */
    readonly property int defaultButtonHeight: 35
    readonly property color defaultButtonSelectedColor: "blue"
    readonly property color defaultButtonNotSelectedColor: "grey"
    readonly property color defaultButtonBackgroundColor: "#7A57BE"
    readonly property int defaultCornerButtonWidth: 50
    readonly property int defaultButtonRoundedCornerValue: 20
    readonly property color defaultButtonTextColor: "#FFFFFF"
    readonly property int defaultButtonBorderWidth: 1
    readonly property color defaultButtonBorderColor: "#FFFFFF"

    /* Navigation bar styling */
    readonly property int defaultNavBarHeight: defaultButtonHeight

    /* Resource file paths */
    readonly property string defaultButtonClickSound: baseDirectory + "import/sfx/button_pressed.wav"
    readonly property string welcomeScreenImage: baseDirectory + "import/img/welcome_page_placeholder.webp"
    readonly property string textInputBorderImageLoader: baseDirectory + "import/sci/text_input_border.sci"

    /* Form styling */
    readonly property int defaultFormLeftAndRightMarginValue: 10

    /* Text input field styling */
    readonly property int defaultTextFieldHeight: 28
    readonly property int defaultTextFieldFontSize: 16
    readonly property color defaultTextFieldValidInputColor: "black"
    readonly property color defaultTextFieldInvalidInputColor: "red"

    /* Menubar styling */
    readonly property color programTitleBarColor: "#7A57BE"
    readonly property int programTitleBarHeight: 32

    /* Text styling */
    readonly property font programTitleFont: Qt.font({
        family: "Helvetica",
        weight: Font.Black,
        italic: false,
        pointSize: 22
    })

    readonly property color programTitleColor: "white"

    readonly property font header1Font: Qt.font({
        family: "Helvetica",
        weight: Font.Black,
        italic: false,
        pointSize: 40
    })

    readonly property font header2Font: Qt.font({
        family: "Helvetica",
        weight: Font.Black,
        italic: false,
        pointSize: 32
    })

    readonly property font header3Font: Qt.font({
        family: "Helvetica",
        weight: Font.Black,
        italic: false,
        pointSize: 28
    })

    readonly property font header4Font: Qt.font({
        family: "Helvetica",
        weight: Font.Black,
        italic: false,
        pointSize: 24
    })

    readonly property font header5Font: Qt.font({
        family: "Helvetica",
        weight: Font.Black,
        italic: false,
        pointSize: 20
    })

    readonly property font header6Font: Qt.font({
        family: "Helvetica",
        weight: Font.Black,
        italic: false,
        pointSize: 16
    })

    readonly property font bodyTextFont: Qt.font({
        family: "Helvetica",
        weight: Font.Normal,
        italic: false,
        pointSize: 16
    })

    readonly property color headerFontColor: "black"
    readonly property color bodyTextFontColor: "black"

    /* Text input field properties */
    readonly property int defaultTextFieldNamesMaximumLength: 20
    readonly property int defaultTextFieldEmailAddressesMaximumLength: 20
    readonly property int defaultTextFieldPasswordsMaximumLength: 20

    // Must have no spacing
    readonly property string defaultTextFieldNamesValidationString: "[^\s\n\r]+"
    readonly property var defaultTextFieldNamesValidationRegExp: new RegExp(defaultTextFieldNamesValidationString)

    readonly property string defaultTextFieldPasswordsString: "/[^\s\n\r]+/";
    readonly property var defaultTextFieldPasswordsValidationRegExp: new RegExp(defaultTextFieldPasswordsString)

    // Must be in e-mail format
    readonly property string defaultTextFieldEmailsValidationString: "([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+)"
    readonly property var defaultTextFieldEmailsValidationRegExp : new RegExp(defaultTextFieldEmailsValidationString)

    /* Page size properties */
    readonly property int amountToDecreaseHeightOfPageBy: defaultNavBarHeight + programTitleBarHeight

}
