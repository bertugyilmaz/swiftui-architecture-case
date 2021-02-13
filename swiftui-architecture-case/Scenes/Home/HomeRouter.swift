//
//  HomeRouter.swift
//  swiftui-architecture-case
//
//  Created by Bertug Yilmaz (Dogus Teknoloji) on 2/3/21.
//

import Foundation
import SwiftUI

enum HomeRoutes {
    case detail(content: String)
}

struct HomeRouter<C: View>: View {

    private let content: C
    private let route: HomeRoutes

    init(route: HomeRoutes,
         @ViewBuilder
         content: () -> C) {

        self.route = route
        self.content = content()
    }

    var body: some View {
        NavigationLink(
            destination: self.destination(route)){
            self.content
        }
    }

    private func destination(_ routes: HomeRoutes) -> AnyView {
        switch routes {
        case .detail(let name):
            return AnyView(DetailView(content: name))
        }
    }
}

struct HomeRouter_Previews: PreviewProvider {
    static var previews: some View {
        HomeRouter(route: HomeRoutes.detail(content: "df"), content: {
            Text("Router")
        })
    }
}

