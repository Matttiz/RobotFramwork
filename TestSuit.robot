*** Settings ***
Suite Teardown    SeleniumLibrary.Close Browser
Resource          Library.robot

*** Test Cases ***
TestCase1
    Comment    OperatingSystem.Set Environment Variable    webdriver.gecko.driver    /home/matti/Test/Selenium/geckodriver
    SeleniumLibrary.Open Browser    https://google.pl    firefox
