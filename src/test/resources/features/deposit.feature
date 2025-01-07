Feature: deposit
    As a customer
    I want to deposit to ATM
    so that I can do transactions

Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    And a customer with id 2 and pin 222 with balance 50 exists
    When I login to ATM with id 1 and pin 111

Scenario: Deposit money to ATM
    When I deposit 20 to ATM
    Then my account balance is 220
