***Settings***
Resource        ../import.robot
Test Setup          Open to do list website
Test Teardown       Close to do list website

***Test Cases***
TC1 User can add to do item correctly and be displayed on to do task tab correctly
    [Tags]      TC01
    [Documentation]     When add item successfully, the item should be displayed on to do tasks tab and should store data in todo local storage
    Verify local storage should have expected to do item        todo        ${EMPTY}
    Input to do list        item1
    Click add to do list button
    Verify local storage should have expected to do item        todo    item1
    Click and verify to do tasks tab should be active
    Verify expected item should be displayed on to do tasks tab     item1       1