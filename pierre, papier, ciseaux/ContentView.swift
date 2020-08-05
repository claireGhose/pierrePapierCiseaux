//
//  ContentView.swift
//  pierre, papier, ciseaux
//
//  Created by claire on 03/08/2020.
//  Copyright © 2020 claire. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @State var monChoix = "dos carte"
    
    
    var body: some View {
      
        ZStack{
            Rectangle ()
                .foregroundColor(Color.yellow)
                .edgesIgnoringSafeArea(.all)
            .opacity(0.9)
               
        
        VStack{
        
        HStack{
                Text("WELCOME TO")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.red)
        }
            
        HStack{
               Text("pierre papier ciseau")
               .font(.largeTitle)
               .fontWeight(.heavy)
                .foregroundColor(Color.red)
        }
             Spacer()
        HStack {
                Text ("Do your choice")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.gray)
            }
            
            
        HStack {
            Button(action: {
                self.monChoix = "pierre1"
            }) {
                
                Image ("pierre1")
                .resizable()
                .frame(width: 110, height: 210)
                    .rotationEffect(Angle (degrees: 90))
            }.buttonStyle(PlainButtonStyle())
                
            
            Button(action: {
                self.monChoix = "papier1"
            }) {
                Image ("papier1")
                .resizable()
                .frame(width: 110, height: 210)
                .rotationEffect(Angle (degrees: 90))
             }.buttonStyle(PlainButtonStyle())
                
                
                Button(action: {
                self.monChoix = "ciseau1"
                           }) {
                Image ("ciseau1")
                .resizable()
                .frame(width: 110, height: 210)
                .rotationEffect(Angle (degrees: 90))
                }.buttonStyle(PlainButtonStyle())
            } // Hstack
            
            
            
            HStack {
                Image (monChoix)
                .resizable()
                .frame(width: 75, height: 110)
              
            Spacer()
                
                Image ("dos carte")
                .resizable()
                .frame(width: 75, height: 110)
                
            }.padding()
            HStack {
                Text ("you ")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.gray)
                             Spacer()
                Text ("computer")
                    .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.gray)
                
            }.padding()
        
            
        } // Vstack
            } // zstak
}  //var body
}  // struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
