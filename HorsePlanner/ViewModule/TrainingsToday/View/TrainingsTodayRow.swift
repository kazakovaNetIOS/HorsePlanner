//
//  TrainingsTodayRow.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 17.10.2021.
//

import SwiftUI

struct TrainingsTodayRow: View {
    let horse: Horse
    
    var body: some View {
        HStack {
            horse.image
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text(horse.name)
                    .font(.title2)
                Text(horse.owner)
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }
            Spacer()
        }
    }
}

struct TrainingsTodayRow_Previews: PreviewProvider {
    static var previews: some View {
        TrainingsTodayRow(horse: horses[0])
            .previewLayout(.sizeThatFits)
    }
}
