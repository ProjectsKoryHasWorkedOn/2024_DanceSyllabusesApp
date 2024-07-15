import QtQuick

/** Like main.css stylesheet */

QtObject {
    /* Button styling */
    readonly property int defaultButtonHeight: 35
    readonly property color defaultButtonSelectedColor: "blue"
    readonly property color defaultButtonNotSelectedColor: "grey"

    /* Text input field styling */
    readonly property int defaultTextFieldHeight: 28
    readonly property int defaultTextFieldFontSize: 16
    readonly property color defaultTextFieldValidInputColor: "black"
    readonly property color defaultTextFieldInvalidInputColor: "red"

    /* Text input field properties */
    //readonly property string defaultTextFieldNamesValidationString: "[^\s\n\r]+"
        // Must have no spacing

    //var defaultTextFieldNamesValidationRegExp = new RegExp(defaultTextFieldNamesValidationString);


    //readonly property string defaultTextFieldEmailsValidationString: "([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+)"
        // Must be in e-mail format

    //var defaultTextFieldEmailsValidationRegExp = new RegExp(defaultTextFieldEmailsValidationString);

    //readonly property string defaultTextFieldPasswordsString: "/[^\s\n\r]+/"
        // Must have no spacing

    //var defaultTextFieldPasswordsValidationRegExp = new RegExp(defaultTextFieldPasswordsString);


    /* Text styling */
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


}
