//
//  ContentView.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 16.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HorsesTodayList(viewModel: HorsesTodayViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
