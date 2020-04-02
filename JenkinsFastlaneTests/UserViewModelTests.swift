//
//  UserViewModelTests.swift
//  JenkinsFastlaneTests
//
//  Created by Gyorgy Borz on 2020. 04. 01..
//  Copyright © 2020. Gyorgy Borz. All rights reserved.
//

import XCTest
@testable import JenkinsFastlane

class UserViewModelTests: XCTestCase {
    
    private var userViewModel: UserViewModel!

    override func setUpWithError() throws {
        userViewModel = UserViewModel(user: User(name: "Jason", age: 20, profession: "Chef"))
    }

    override func tearDownWithError() throws {
        userViewModel = nil
    }
    
    func testUserViewModelInitialization() {
        XCTAssertNotNil(userViewModel)
        XCTAssertEqual("Jason", userViewModel.username)
        XCTAssertEqual(20, userViewModel.age)
        XCTAssertEqual("Chef", userViewModel.profession)
    }
    
    func testUserViewModelDescription() {
        let description = "User Jason is 20 years old and his/her profession is Chef"
        
        XCTAssertNotNil(userViewModel)
        XCTAssertEqual(description, userViewModel.description)
    }

}
