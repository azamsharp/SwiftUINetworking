//
//  PostListViewModel.swift
//  Blog
//
//  Created by Mohammad Azam on 6/4/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class PostListViewModel: BindableObject {
    
    init() {
        fetchPosts()
    }
    
    var posts = [Post]() {
        didSet {
            didChange.send(self)
        }
    }
    
    private func fetchPosts() {
        Webservice().getAllPosts {
            self.posts = $0 
        }
    }
    
    let didChange = PassthroughSubject<PostListViewModel,Never>()
    
}
