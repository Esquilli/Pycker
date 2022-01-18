//
//  ContentView.swift
//  Pycker
//
//  Created by Pedro Fernandez on 1/18/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingImagePicker = false
    @State private var inputImage = UIImage()

    var body: some View {
        ZStack {
            Image(uiImage: inputImage)
                .resizable()
                .aspectRatio(contentMode: .fit)

            Button(action: {
                self.isShowingImagePicker = true
            }, label: {
                Text("Photo library")
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 35)
                    .background(.blue)
                    .clipShape(Capsule())
            })
        }
        .sheet(isPresented: $isShowingImagePicker) {
            ImagePicker(selectedImage: $inputImage)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
