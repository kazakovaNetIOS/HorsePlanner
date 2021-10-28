//
//  TrainingsTodayList.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 17.10.2021.
//

import SwiftUI

struct TrainingsTodayList: View {
    var viewModel: TrainingsTodayViewModel
    
    var body: some View {
        NavigationView {
//            List(viewModel.horses ?? []) { horse in
//                NavigationLink(destination: TrainingsTodayDetail(viewModel: .init())) {
//                    TrainingsTodayRow(horse: horse)
//                }
//            }
//            .navigationTitle("Trainings Today")
        }
    }
}

struct TrainingsTodayList_Previews: PreviewProvider {
    static var previews: some View {
        TrainingsTodayList(viewModel: TrainingsTodayViewModel())
    }
}
