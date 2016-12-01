# Unit Testing Demo
Lighthouse Labs Lecture Demo of Unit Testing

## Goals
Intro to testing, understnding Unit testing and getting comfortable with XCTestCase.

## Content
The main point of testing it to develop enough confidence in our code that if we refactor and rapidly add more features that existing code will still function as spec’d without having any regressions

## What we can test
1. Method output
2. Object State change
3. Method Invocation 

One style is: “red, green, refactor’. Basically make a test fail, then work, then we can refactor the code with more confidence

We ideally test things in isolation. A XCtest class should be created for every class you want to test

Always test the negative as well as the positive of a test!

You can start with models, but we have the ability to test view controllers

In order to test a single class, we can use mock objects (OCMock) which will give canned responses to simulate returned values. We saw an example of Using Mock and Stub to verify that methods were invoked (or not invoked)

We can also use partial mocks to look for Expectations. Where we expect one object to call a specific method on another and want to test it (remember to call verify)

We can use packages like Nocilla to stub out web calls (we don’t want to have our tests call web access, otherwise we risk the tests running too slow

In iOS 9, Apple has added support to test your UI through accessibility features.

## Slides
https://drive.google.com/open?id=0B0pu9Lb4SfWYU3g3UWU5bF9ldFk

## Other Resources
* OCMock: http://ocmock.org
* NSHipster XCTestCase: http://nshipster.com/xctestcase/
* List of XCTest Assertion types: http://iosunittesting.com/xctest-assertions/
* Testing view controllers: http://blog.typpz.com/2014/04/27/xcode-5-test-uitableview-with-xctest-framework/
* XCtest w/ OMock: http://www.objc.io/issue-15/xctest.html
* Testing View Controllers: http://iosunittesting.com/using-storyboards/, http://iosunittesting.com/unit-testing-view-controllers/
* For Touch Testing kif: https://github.com/kif-framework/KIF
* Jenkins Continuous Integration: http://jenkins-ci.org/
