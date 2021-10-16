//
//  HorseDetail.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 17.10.2021.
//

import SwiftUI

struct HorseDetail: View {
    let horse: Horse
    
    var body: some View {
        VStack {
            CircleImage(image: horse.image)
            Text("\(horse.name), \(horse.age) age")
                .font(.title)
                .padding(.bottom)
            Text(horse.owner)
                .font(.subheadline)
                .foregroundColor(.gray)
            Spacer()
        }
    }
}

struct HorseDetail_Previews: PreviewProvider {
    static var previews: some View {
        HorseDetail(horse: horses[0])
    }
}
