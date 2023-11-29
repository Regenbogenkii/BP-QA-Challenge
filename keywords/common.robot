***Keywords***
Open to do list website
    Open browser     ${to_do_web_url}        ${browser}

Close to do list website
    Close browser

Click delete item
    Click element       xpath=//button[text()="Delete"]

Get item from local storage
    [Arguments]     ${local_storage_key}
    ${local_storage_value}=    Execute javaScript    return localStorage.getItem('${local_storage_key}');
    [Return]        ${local_storage_value}

Verify local storage should have expected to do item
    [Arguments]     ${local_storage_key}        ${item}=${EMPTY}
    ${local_storage_value}=    Execute javaScript    return localStorage.getItem('${local_storage_key}');
    IF  ${local_storage_value}
        ${local_storage_value}=      Evaluate    list(${local_storage_value})
        ${item_length}      Get length      ${local_storage_value}
        IF  ${item_length} == 0
            Should be empty       ${local_storage_value}
        ELSE
            Should contain     ${local_storage_value}       ${item}
        END
    END