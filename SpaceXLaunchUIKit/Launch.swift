//
//  Launch.swift
//  SpaceXLaunchUIKit
//
//  Created by Abouzar Moradian on 9/4/24.
//

enum LaunchStatus: String {
    
    case success = "SUCCESS"
    case failure = "FAILURE"
}

import Foundation

struct Launch {
    
    let name: String
    let description: String
    let launchTime: Date
    let status: LaunchStatus
}
