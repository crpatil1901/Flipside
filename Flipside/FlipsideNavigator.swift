//
//  FlipsideNavigator.swift
//  Flipside
//
//  Created by Chinmay Patil on 23/10/22.
//

import SwiftUI

struct FlipsideNavigator: View {
    
//    @State scale
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(0 ..< 10) { i in
                        NewsCardView()
                    }
                }
            }
            .navigationTitle("Flipside")
        }
    }
}

struct FlipsideNavigator_Previews: PreviewProvider {
    static var previews: some View {
        FlipsideNavigator()
    }
}
