//
//  ContentView.swift
//  CarParkingSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 15/04/22.
//
//  MARK: Instagram
//  TheAppWizard
//  MARK: theappwizard2408

import SwiftUI

struct ContentView: View {
    var body: some View {
        FinalView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}















struct FinalView: View {
    @State var splashScreen  = true

        var body: some View {
             ZStack{
                Group{
                  if splashScreen {
                      SplashScreen()
                   }
                  else{
                      CarParkingView()
                        }
                    }
                   .onAppear {
                      DispatchQueue
                           .main
                           .asyncAfter(deadline:
                            .now() + 3) {
                       self.splashScreen = false
                      }
                    }
                }
            }
        }


struct SplashScreen: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            ZStack{
                LottieView(filename: "car")
                    .frame(width: 300, height: 300)
                    .opacity(0.8)
                
                
                
                Text("C A R  P A R K I N G")
                    .padding()
                    .foregroundColor(.white)
                    .font(.title)
                    .offset(x: 0, y: 70)
                    
            }
        }
    }
}

/////
