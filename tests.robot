*** Settings ***

Documentation           New test suite
# You can change imported library to "QWeb" if testing generic web application, not Salesforce.
Library                 QForce 
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers

*** Test Cases ***

Remove Item From the Cart
    [Documentation]   Select product and verify details on the page

    GoTo                  https://qentinelqi.github.io/shop
    VerifyText            The animal friendly clothing company
    ClickText             Scar the Lion
    ClickText             Add to cart
    VerifyText            Cart summary
    ClickItem             Decrement quantity
    VerifyText            Your cart is full
    ClickText             Continue shopping

