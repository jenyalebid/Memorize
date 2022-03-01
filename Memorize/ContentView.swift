
//
//  ContentView.swift
//  Memorize
//
//  Created by Jenya Lebid on 2/21/22.
//

import SwiftUI

struct ContentView: View {
    
    let emojis = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"]
    
    @State var emojiCount = 4
    
    var body: some View {
        
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach (emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(emoji: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                            
                    }
                }
            }
            Spacer()
            HStack {
                remove
                Spacer()
                add
            }
            .font(.title)
            .padding(.horizontal)
        }
        .padding(.horizontal)
        
    }
    
    var remove: some View {
        Button {
            emojiCount -= 1
        } label: {
            Image(systemName: "minus")
        }
        .disabled(emojiCount == 1)
    }
    
    var add: some View {
        Button {
            emojiCount += 1
        } label: {
            Image(systemName: "plus")
        }
        .disabled(emojiCount == emojis.count)
    }
}



struct CardView: View {
    
    var emoji: String
    
    @State var isFaceUp = true
    
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 20)
        ZStack {
            if isFaceUp {
                shape
                    .fill(Color.white)
                shape
                    .strokeBorder(lineWidth: 3)
                Text("\(emoji)")
                    .font(.largeTitle)
            }
            else {
                shape
                    .fill(Color.red)
            }
            
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
