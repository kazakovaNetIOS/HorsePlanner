//
//  CircleImage.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 17.10.2021.
//

import SwiftUI

struct CircleImage: View {
    let image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: horses[2].image)
            .previewLayout(.sizeThatFits)
    }
}
