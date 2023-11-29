***Settings***
Resource        ../import.robot
Test Setup          Open to do list website
Test Teardown       Close to do list website

***Test Cases***
TC2 User can click check to do list and be displayed on completed tab correctly
    [Tags]      TC02
    [Documentation]     When check to do item successfully, the item should be displayed on completed tab and should store data in complete local storage
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