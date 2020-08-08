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
   @State var sonChoix = "dos carte1"
   @State var RandomCarte = ["pierre1 copie", "papier1 copie", "ciseau1 copie"]
    @State var scorePlayer = 0
    @State var scoreComputer = 0
   var x = readLine()
    
    var body: some View {
      
        ZStack{
            Image("wood1")
            .resizable()
            .edgesIgnoringSafeArea(.all)
             .opacity(0.9)
           
           
        
        
        VStack{

            
        HStack{

            Text("Pierre Papier Ciseau")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.black)
            .opacity(0.9)
            }.padding()
            
        HStack {
            Text ("War")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.black)
            .opacity(0.7)
            }
        
            
   // MARK: Button
        HStack {
            Button(action: {
                self.monChoix = "pierre1 copie"
                let indice = Int.random(in: 0...2)
                self.sonChoix = self.RandomCarte[indice]
               
                //score pour pierre
                if self.monChoix == self.sonChoix {
                    self.scoreComputer += 1
                    self.scorePlayer += 1
                }
                
                if self.monChoix == "pierre1 copie" && self.sonChoix == "papier1 copie" {
                    self.scoreComputer += 1
                }
                
                if self.monChoix == "pierre1 copie" && self.sonChoix == "ciseau1 copie" {
                    self.scorePlayer += 1
                }

            }) {
            Image ("pierre1")
            .resizable()
            .frame(width: 110, height: 210)
            .rotationEffect(Angle (degrees: 90))
            }.buttonStyle(PlainButtonStyle())
                
            
            Button(action: {
                self.monChoix = "papier1 copie"
                let indice = Int.random(in: 0...2)
                self.sonChoix = self.RandomCarte[indice]
                
                // score papier
            
                if self.monChoix == self.sonChoix {
                    self.scoreComputer += 1
                    self.scorePlayer += 1
                }
                             
                if self.monChoix == "papier1 copie" && self.sonChoix == "pierre1 copie" {
                    self.scorePlayer += 1
                }
                             
                if self.monChoix == "papier1 copie" && self.sonChoix == "ciseau1 copie" {
                    self.scoreComputer += 1
                }
                
                
            }){
            Image ("papier1")
            .resizable()
            .frame(width: 110, height: 210)
            .rotationEffect(Angle (degrees: 90))
            }.buttonStyle(PlainButtonStyle())
                
                
            Button(action: {
                self.monChoix = "ciseau1 copie"
                let indice = Int.random(in: 0...2)
                self.sonChoix = self.RandomCarte[indice]
                
                //score papier
                
                if self.sonChoix == self.monChoix {
                    self.scorePlayer += 1
                    self.scoreComputer += 1
                }
                if self.monChoix == "ciseau1 copie" && self.sonChoix == "pierre1 copie" {
                    self.scoreComputer += 1
                }
                             
                if self.monChoix == "ciseau1 copie" && self.sonChoix == "papier1 copie" {
                    self.scorePlayer += 1
                }

                
            }) {
            Image ("ciseau1")
            .resizable()
            .frame(width: 110, height: 210)
            .rotationEffect(Angle (degrees: 90))
        }.buttonStyle(PlainButtonStyle())
            } // Hstack
            
            
   // MARK: jeu battle
        HStack {
            Image (monChoix)
            .resizable()
            .frame(width: 210, height: 110)
            .rotationEffect(Angle (degrees: 90))
                
              
            Spacer()
                
            Image (sonChoix)
            .resizable()
            .frame(width:210, height: 110)
            .rotationEffect(Angle (degrees: 90))
                
            }
        HStack {
            Text ("Player")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.black)
            .opacity(0.8)
            .padding(.leading, 50)
            
            Spacer()
            
            Text ("    CPU")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.black)
            .opacity(0.8)
            .padding(.trailing, 75)
            }
      
            // MARK: reset et score
       HStack {
        VStack {
            Text ("score")
                .font(.headline)
                .fontWeight(.heavy)
            Text (String(self.scorePlayer))
                .font(.title)
                .fontWeight(.heavy)
        }.padding(.leading, 70)
        
        Spacer()
        
        VStack {
            Button (action: {
                self.monChoix = "dos carte"
                self.sonChoix = "dos carte"
                self.scoreComputer = 0
                self.scorePlayer = 0
            }) {
                Text("Reset")
                .font(.title)
                .fontWeight(.heavy)
                .padding(.all, 10)
                .background(Color.white.opacity(0.5))
                .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                .padding()
            }

        Spacer()
        
        VStack {
            Text ("score")
                .fontWeight(.heavy)
            Text (String(self.scoreComputer))
                .font(.title)
                .fontWeight(.heavy)
         } .padding(.trailing, 70)
        
        
         }//Hstack
            
        } // Vstack
            } // zstak}
}  //var body
}  // struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
