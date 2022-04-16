//
//  CarParkingView.swift
//  CarParkingSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 15/04/22.
//

import SwiftUI

struct CarParkingView: View {
    var body: some View {
        CarParkingBody()
    }
}

struct CarParkingView_Previews: PreviewProvider {
    static var previews: some View {
        CarParkingView()
    }
}




struct CarParkingBody: View {
    
    
    @State private var showBook = false
    @State private var bookTap = false
    
    @State private var parkingslotArray = ["10:00 AM",
                                    "11:00 AM",
                                    "12:00   ",
                                    "13:00 PM",
                                    "14:00 PM"
                                             ]
    
    
    @State private var selectedIndex = 0
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
           
            HStack {
                Text("T I M E ").font(.title2).foregroundColor(.white)
                Spacer().frame(width: 30, height: 0)
                Picker(selection: $selectedIndex, label: Text(""))
                {
                    ForEach(0 ..< parkingslotArray.count) {
                        Text(self.parkingslotArray[$0])
                            .fontWeight(.bold)
                            .font(.title2)
                            .foregroundColor(.white)
                        
                          
                           
                        
                    }
                }
               
            
                
                .pickerStyle(WheelPickerStyle())
                     .frame(width: 80, height: 80, alignment: .center)
                
                
                Spacer().frame(width: 15, height: 0)
                
                Text("S E L E C T E D")
                    .padding()
                    .foregroundColor(.white)
                    .font(.title2)
                    
           
            }.offset(x: 0, y: -340)
            
            ZStack{
                
                Rectangle()
                    .frame(width: 400, height: 750)
                    .offset(x: 0, y: 55)
            
            CarParkingLines()
                .offset(x: 0, y: 55)
                
            }
            
            ZStack{
            Rectangle()
                .frame(width: 400, height: 100)
               
                
                HStack{
                   
                    Spacer().frame(width: 10, height: 0)
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 15, height: 24)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Text("C H O O S E   S P O T")
                            .fontWeight(.semibold)
                            .font(.title)
                            .foregroundColor(.white)
                    
                    Spacer()
                    
                    
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                    
                    Spacer().frame(width: 10, height: 0)
                    
                }.padding()
            
                
            } .offset(x: 0, y: -400)
            
            
            if selectedIndex == 0 {
                Image("p1")
                    .resizable()
                    .frame(width: 410, height: 750)
                    .opacity(1)
                    .offset(x: 6, y: 55)
                
            }
        
            
            if selectedIndex == 1 {
                Image("p3")
                    .resizable()
                    .frame(width: 410, height: 750)
                    .opacity(1)
                    .offset(x: 6, y: 55)
                
            }
            
            if selectedIndex == 2 {
                Image("p4")
                    .resizable()
                    .frame(width: 410, height: 750)
                    .opacity(1)
                    .offset(x: 6, y: 55)
                
            }
            
            if selectedIndex == 3 {
                Image("p2")
                    .resizable()
                    .frame(width: 410, height: 750)
                    .opacity(1)
                    .offset(x: 6, y: 55)
                
                
                
                ZStack{
                Rectangle()
                    .frame(width: 140, height: 85)
                    .foregroundColor(.black)
                    .offset(x: -85, y: -150)
                    
                    .gesture(
                        TapGesture()
                            .onEnded({
                            bookTap.toggle()
                                    })
                                   )
                    
                    if bookTap {
                        Image("book")
                            .resizable()
                            .frame(width: 410, height: 750)
                            .opacity(1)
                            .offset(x: 6, y: 55)
                        
                        ShowBooking()
                            .offset(x: 0, y: showBook ? 0 : 300)
                                            .onAppear {
                                                    withAnimation(Animation.default.repeatCount(1)) {
                                                        showBook.toggle()
                                                  }
                                            }
                    }
                    
                
                
                }
                
               
                
            }
            
            if selectedIndex == 4 {
                Image("p1")
                    .resizable()
                    .frame(width: 410, height: 750)
                    .opacity(1)
                    .offset(x: 6, y: 55)
                
            }
           
        }
    }
}


struct CarParkingLines: View {
    var body: some View {
        ZStack{
            Image("parkinglines")
                .resizable()
                .frame(width: 400, height: 750)
                .opacity(0.6)
            
            
            Image("parkingslots")
                .resizable()
                .frame(width: 400, height: 750)
                .opacity(1)
            
            Text("E X I T")
                .font(.title)
                .foregroundColor(.white)
                
        }
    }
}



//


struct ShowBooking: View {
    @State  var login = ""
       @State  var password = ""
       var body: some View {
           ZStack{
               RoundedRectangle(cornerRadius: 35)
                   .frame(width: 425, height: 320)
                   .foregroundColor(.white)
               
               VStack{
                   
                   HStack{
                       
                       Spacer().frame(width: 10, height: 0)
                      Text("P - 02")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .font(.system(size: 35))
                       
                       Spacer()
                       
                       
                       Text("15$")
                             .foregroundColor(.black)
                             .fontWeight(.regular)
                             .font(.system(size: 35))
                             .opacity(0.5)
                        
                       Spacer().frame(width: 10, height: 0)
                    
                    }
                   
                   HStack{
                       
                       Spacer().frame(width: 10, height: 0)
                      Text("Pay For Spot")
                           .foregroundColor(.black)
                            .fontWeight(.regular)
                            .font(.system(size: 20))
                            .opacity(0.5)
                       
                       Spacer()
                                           
                        
                    }
                   
                   Spacer().frame(width: 0, height: 10)
                   
                   
                   HStack{
                       
                      Spacer().frame(width: 10, height: 0)
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis elit id volutpat mollis. Nullam consectetur, enim eget cursus sollicitudin, enim lorem gravida mi, ac ullamcorper ipsum quam ut justo.")
                           .foregroundColor(.black)
                            .fontWeight(.regular)
                            .font(.system(size: 15))
                            .opacity(0.3)
                       
                    }
                   
                   
            
                   
                   
                   
                   
                   
                   ZStack{
                       RoundedRectangle(cornerRadius: 15)
                           .frame(width: 280, height: 60)
                           
                       
                       HStack{
                           Text("Pay with Apple")
                               .font(.title3)
                               .fontWeight(.regular)
                               .foregroundColor(.white)
                           
                           Spacer().frame(width: 25, height: 0)
                           
                           Image(systemName: "applelogo")
                               .resizable()
                               .frame(width: 20, height: 20)
                               .foregroundColor(.white)
                           
                       }
                       
                       
                       
                   }.padding()
                   
                
                   
                
                   
                   
                   
                   
                   
               }.padding()
                              
           }.offset(x: 0, y: 320)
       }
   }
