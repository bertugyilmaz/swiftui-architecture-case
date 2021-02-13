//
//  DetailView.swift
//  swiftui-architecture-case
//
//  Created by Bertug Yilmaz (Dogus Teknoloji) on 2/3/21.
//

import SwiftUI

struct DetailView: View {
    let content: String
    
    var body: some View {
        Text(content)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(content: "Sample Content")
    }
}
