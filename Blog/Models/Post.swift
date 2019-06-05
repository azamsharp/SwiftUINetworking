//
//  Post.swift
//  Blog
//
//  Created by Mohammad Azam on 6/4/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation
import SwiftUI

struct Post: Codable, Hashable, Identifiable  {
    let id: Int 
    let title: String
    let body: String
}
