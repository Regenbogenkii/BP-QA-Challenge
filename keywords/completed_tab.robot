***Keywords***
Click and verify completed tab should be active
    Click element       xpath=//a[@href="#completed"]
    Wait until element is visible       xpath=//a[@href="#completed" and contains(@class,"is-active")]

Verify completed to do list should be displayed
    [Arguments]     ${item}     ${item_no}
    Wait until element is visible       xpath=(//li[//i[text()="done"] and //span[text()="${item}"] and //button[text()="Delete"]])[${item_no}]

Verify item on completed tab is not displayed
    [Arguments]     ${item}     ${item_no}
    Wait until page does not contain element       xpath=(//li[//i[text()="done"] and //span[text()="${item}"] and //button[text()="Delete"]])[${item_no}]
