***Settings***
Resource        ../import.robot
Test Setup          Open to do list website
Test Teardown       Close to do list website

***Test Cases***
TC6 User can refresh browser and item still be displayed correctly
    [Tags]      TC06
    Input to do list        item1
    Click add to do list button
    Verify local storage should have expected to do item        todo    item1
    sleep     5s
    Execute JavaScript    location.reload(true)
    Verify local storage should have expected to do item        todo    item1