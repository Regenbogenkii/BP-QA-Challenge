***Settings***
Resource        ../import.robot
Test Setup          Open to do list website
Test Teardown       Close to do list website

***Test Cases***
TC3 User can delete item on to do tasks tab successfully
    [Tags]      TC03
    Input to do list    item1
    Click add to do list button
    Verify local storage should have expected to do item        todo    item1
    Click and verify to do tasks tab should be active
    Click delete item
    Verify item on to do tasks tab is not displayed     item1       1
    Verify local storage should have expected to do item        todo        ${EMPTY}