//
//  UserViewModel.swift
//  JenkinsFastlane
//
//  Created by Gyorgy Borz on 2020. 04. 01..
//  Copyright © 2020. Gyorgy Borz. All rights reserved.
//

import Foundation

struct UserViewModel {
    
    private let user: User
    
    init(user: User) {
        self.user = user
    }
    
    var username: String {
        return user.name
    }
    
    var age: Int {
        return user.age
    }
    
    var profession: String {
        return user.profession
    }
    
    var description: String {
        return "User \(username) is \(age) years old and his/her profession is \(profession)"
    }
    
}
