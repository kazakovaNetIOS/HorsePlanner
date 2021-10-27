//
//  TrainingsTodayDetail.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 17.10.2021.
//

import SwiftUI

struct TrainingsTodayDetail: View {
    let viewModel: TrainingsTodayDetailViewModel
    
    var body: some View {
        VStack {
            CircleImage(image: viewModel.horse?.image ?? Image(systemName: "photo"))
            Text("\(viewModel.horse?.name ?? ""), \(viewModel.horse?.age ?? 0) age")
                .font(.title)
                .padding(.bottom)
            Text(viewModel.horse?.owner ?? "")
                .font(.subheadline)
                .foregroundColor(.gray)
            Spacer()
        }
    }
}

struct HorseDetail_Previews: PreviewProvider {
    static var previews: some View {
        TrainingsTodayDetail(viewModel: .init())
    }
}
