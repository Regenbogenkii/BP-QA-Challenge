***Settings***
Resource        ../import.robot
Test Setup          Open to do list website
Test Teardown       Close to do list website

***Test Cases***
TC7 User can add duplicated item
    [Tags]      TC07
    Input to do list        item1
    Click add to do list button
    Input to do list        item1
    Click add to do list button
    Verify local storage should have expected to do item        todo    item1
    Verify local storage should have expected to do item        todo    item1
    Click and verify to do tasks tab should be active
    Verify expected item should be displayed on to do tasks tab     item1       1
    Verify expected item should be displayed on to do tasks tab     item1       2