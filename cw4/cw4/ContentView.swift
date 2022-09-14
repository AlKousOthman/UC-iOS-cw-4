//
//  ContentView.swift
//  cw4
//
//  Created by Othman Alkous on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grocery = ["Pepsican", "Bufak", "Lionchoco", "Wazatea", "Ketchup"]
    @State var newitem = ""
    var body: some View {
        VStack{
            List(grocery, id: \.self) { item in
                HStack{
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height:70)
                    Text(item)
                    
                }
                
            }
            HStack{
                Button{
                    grocery.append(newitem)
                } label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.title)
                    }
                .frame(width: 50, height: 50)         .background(Color.green)
                .cornerRadius(13)
                
                TextField("New item", text: $newitem)
                
                Button{
                    grocery.remove(at: 0)
                } label: {
                    Image(systemName: "minus")
                        .foregroundColor(.white)
                        .font(.title)
                    }
                .frame(width: 50, height: 50)         .background(Color.red)
                .cornerRadius(13)
                
                Button{
                    grocery.append(grocery.randomElement() ?? "Something wrong")
                } label: {
                    Image(systemName: "questionmark")
                        .foregroundColor(.white)
                        .font(.title)
                    }
                .frame(width: 50, height: 50)         .background(Color.orange)
                .cornerRadius(13)
                
            }
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
