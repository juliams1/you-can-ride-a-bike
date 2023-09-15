//
//  ContentView.swift
//  I can bike
//
//  Created by user on 13/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var rideABike = true
    var body: some View {
        
        ZStack {
            Image("background").resizable().ignoresSafeArea()
            VStack {
                Image(rideABike ? "cat-bike" : "safe-cat").resizable().frame(height: 400)
                Spacer().frame(height: 50)
                Text(rideABike ? "i can ride a bike" : "i cant't ride a bike").font(.system(size: 35))
                ZStack {
                    Capsule()
                        .frame(width:80,height:44)
                        .foregroundColor(.black)
                    Circle()
                        .frame(width:40, height:40)
                        .foregroundColor(.white)
                        .offset(x: rideABike ? -18 : 18)
                        .padding(24)
                        .animation(.spring(), value: rideABike)
                    if rideABike == true {
                        Text("heat")
                            .offset(x: 10, y: -550)
                        Text("heat")
                            .offset(x: -120, y: -500)
                        Text("heat")
                            .offset(x: 70, y: -480)
                        Text("\"i'm better \n  than everyone\"")
                            .offset(x: 85, y: -380)
                    } else {
                        Text("not hurt (physically)")
                            .offset(x: -15, y: -550)
                        Text("self-caring")
                            .offset(x: -135, y: -490)
                        Text("uber's best \n buddy")
                            .offset(x: -140, y: -380)
                        Text("\"my legs works \n just fine\"")
                            .offset(x: 125, y: -380)
                    }
                }
            } .onTapGesture {
                self.rideABike.toggle()
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
