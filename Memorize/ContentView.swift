
//
//  ContentView.swift
//  Memorize
//
//  Created by Jenya Lebid on 2/21/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
            Text("Hello There")
        }
        .foregroundColor(.red)
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
