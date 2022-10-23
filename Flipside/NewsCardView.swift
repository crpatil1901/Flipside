//
//  NewsCardView.swift
//  Flipside
//
//  Created by Chinmay Patil on 23/10/22.
//

import SwiftUI

struct NewsCardView: View {
    
    @GestureState var isDetectingLongpress = false
    @State var scale = 1.0
    
    var body: some View {
        HStack(alignment: .top) {
            Image("placeholder")
                .resizable()
                .scaledToFill()
                .frame(width: 96, height: 96)
                .clipped()
                .cornerRadius(8)
                .padding(.trailing, 4)
            VStack(alignment: .leading) {
                Text("Headline Goes Here")
                    .font(.headline)
                    .padding(.bottom, 4)
                    .lineLimit(1)
                Text("A Quick Brown fox jumped over a lazy dog. Lorem Ipsum Dolor Sit amet. From CNN.")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .lineLimit(3)
            }
        }
        .padding(.horizontal)
        .background {
            Image("placeholder")
                .resizable()
                .edgesIgnoringSafeArea(.horizontal)
                .scaledToFill()
                .frame(height: 128)
                .overlay(.regularMaterial)
                .clipped()
                .cornerRadius(16)

        }
        .padding(.vertical, 16)
        .scaleEffect(x: scale, y: scale)
        .gesture(
            LongPressGesture()
                .updating($isDetectingLongpress) { currentState, gestureState, transaction in
                    withAnimation(.spring()) {
                        scale = 0.9
                    }
                }
                .onEnded { ended in
                    withAnimation {
                        scale = 1.02
                    }
                }
        )
        .simultaneousGesture(
            TapGesture()
                .onEnded {
                    withAnimation {
                        scale = 1
                    }
                }
        )
//        .onLongPressGesture(minimumDuration: 1.0, ) {
//            self.scale = 1.2
//        } onPressingChanged: { _ in
//
//        }

    }
}

struct NewsCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewsCardView()
    }
}
