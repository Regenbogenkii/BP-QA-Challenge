***Settings***
Resource        ../import.robot
Test Setup          Open to do list website
Test Teardown       Close to do list website

***Test Cases***
TC5 User can close browser to clear item on page
    [Tags]      TC05
    Input to do list        item1
    Click add to do list button
    Verify local storage should have expected to do item        todo    item1
    Close browser
    Open to do list website
    Verify local storage should have expected to do item        todo        ${EMPTY}