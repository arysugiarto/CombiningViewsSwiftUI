//
//  ContentView.swift
//  CombiningViewsSwiftUI
//
//  Created by Ary Sugiarto on 09/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
