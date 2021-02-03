//
//  HomeView.swift
//  swiftui-architecture-case
//
//  Created by Bertug Yilmaz (Dogus Teknoloji) on 2/3/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView(content: {
            HomeRouter(route: .detail(content: "I am comin")) {
                Text("Navigate me")
            }
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
