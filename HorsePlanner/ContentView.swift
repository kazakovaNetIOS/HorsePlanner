//
//  ContentView.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 16.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TrainingsTodayList(viewModel: TrainingsTodayViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
