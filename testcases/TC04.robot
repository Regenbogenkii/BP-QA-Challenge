***Settings***
Resource        ../import.robot
Test Setup          Open to do list website
Test Teardown       Close to do list website

***Test Cases***
TC4 User can delete item on completed tab successfully
    [Tags]      TC04
    Input to do list        item1
    Click add to do list button
    Verify local storage should have expected to do item        todo    item1
    Click and verify to do tasks tab should be active
    Click checkbox to complete to do list on to do tasks tab
    Verify item on to do tasks tab is not displayed     item1       1
    Click and verify completed tab should be active
    Verify completed to do list should be displayed     item1       1
    Verify local storage should have expected to do item        todo        ${EMPTY}
    Verify local storage should have expected to do item        complete    item1
    Click delete item
    Verify item on completed tab is not displayed       item1       1
    Verify local storage should have expected to do item        todo        ${EMPTY}
    Verify local storage should have expected to do item        complete    ${EMPTY}