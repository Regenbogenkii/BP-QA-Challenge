***Keywords***
Click and verify to do tasks tab should be active
    Click element       xpath=//a[@href="#todo"]
    Wait until element is visible       xpath=//a[@href="#todo" and contains(@class,"is-active")]

Verify expected item should be displayed on to do tasks tab
    [Arguments]     ${item}     ${item_no}
    [Documentation]     after adding to do list, the item should be displayed on to do task tab, which displaye a list that contain checkbox and item text and delete button
    Wait until element is visible       xpath=(//li[//input[@type="checkbox"] and //span[text()="${item}"] and //button[text()="Delete"]])[${item_no}]

Click checkbox to complete to do list on to do tasks tab
    Execute javascript      document.getElementsByClassName('mdl-checkbox__focus-helper')[0].click();

Verify item on to do tasks tab is not displayed
    [Arguments]     ${item}     ${item_no}
    Wait until page does not contain element       xpath=(//li[//input[@type="checkbox"] and //span[text()="${item}"] and //button[text()="Delete"]])[${item_no}]