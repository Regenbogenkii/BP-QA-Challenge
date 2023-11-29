***Keywords***
Input to do list
    [Arguments]     ${item}
    Input text      id=new-task         ${item}

Click add to do list button
    Click button    xpath=//button[i[text()="add"]]

Click and verify add item tab should be active
    Click element       xpath=//a[@href="#todo"]
    Wait until element is visible       xpath=//a[@href="#add-item" and contains(@class,"is-active")]