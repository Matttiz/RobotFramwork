*** Settings ***
Suite Teardown
Resource          Library.robot

*** Test Cases ***
TestCase1
    Comment    OperatingSystem.Set Environment Variable    webdriver.gecko.driver    /home/matti/Test/Selenium/geckodriver    SeleniumLibrary.Close Browser
    SeleniumLibrary.Open Browser    https://google.pl    firefox

Gmail
    Comment    OperatingSystem.Set Environment Variable    webdriver.gecko.driver    /home/matti/Test/Selenium/geckodriver
    SeleniumLibrary.Open Browser    https://www.google.com/intl/pl/gmail/about/    firefox
    SeleniumLibrary.Click Element    //div[contains(@class,'header')]//a[contains(text(), "Utwórz konto")]
    SeleniumLibrary.Capture Element Screenshot    //*[contains(text()='Imię')]
