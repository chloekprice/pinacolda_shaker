//
//  ContentView.swift
//  PinaColdaShaker
//
//  Created by Chloe Price on 5/24/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var ingredients = ["pineapple", "coconut"]
    @State var isPinaColda: Bool = false
    @State var drinkAction: String = "SHAKE"
    
    var body: some View {
        ZStack{
            Image("beach_sands")
                .resizable()
                .ignoresSafeArea()
    
            VStack{
                Image("drink shaker")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.top)
                Spacer()
                HStack{
                    ForEach(ingredients, id: \.self) { ingredient in
                        Image(ingredient)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }

                }.padding(.horizontal)
                Spacer()
                Button(action: {
                    if isPinaColda {
                        isPinaColda = false
                        
                        ingredients.removeAll()
                        ingredients.append("pineapple")
                        ingredients.append("coconut")
                        
                        drinkAction = "SHAKE"
                    } else {
                        isPinaColda = true
                        
                        ingredients.removeAll()
                        ingredients.append("pina_colda")
                        
                        drinkAction = "UNSHAKE"
                    }
                }) {
                    Text(drinkAction)
                        .font(.custom("BebasNeue", size: 50))
                        .foregroundColor(Color.white)
                        .bold()
                        .padding()
                }.background(Color.black)
                    .padding(.bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
