//
//  ContentView.swift
//  Blog
//
//  Created by Mohammad Azam on 6/4/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var model = PostListViewModel()
    
    var body: some View {
        List(model.posts) { post in
            Text(post.title)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
