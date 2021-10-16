//
//  HorsesTodayList.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 17.10.2021.
//

import SwiftUI

struct HorsesTodayList: View {
    var body: some View {
        NavigationView {
            List(horses) { horse in
                NavigationLink(destination: HorseDetail(horse: horse)) {
                    HorsesTodayRow(horse: horse)
                }
            }
            .navigationTitle("Horses Today")
        }
    }
}

struct HorsesTodayList_Previews: PreviewProvider {
    static var previews: some View {
        HorsesTodayList()
    }
}
