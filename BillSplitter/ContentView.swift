//
//  ContentView.swift
//  BillSplitter
//
//  Created by Lupyana Mbembati on 06/11/2019.
//  Copyright © 2019 Lupyana Mbembati. All rights reserved.
//

import SwiftUI

struct ContentView: View {
       @State var totalClicked: Int = 0
        @State var TotalBill = ""
        @State var numOfPeople = ""
       @State var sliderValue = 0.0
    @State var payable_bill: Double = 0.0
       var minimumValue = 0.0
       var maximumvalue = 20.0
    
    var body: some View {
        VStack() {
            Text("Bill Splitter")
            .bold()
            .font(.title)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
            VStack {
                
                HStack() {
                    Text("What is the total bill ?")
                    Spacer()
                }
                
                TextField("Total Bill Value", text: $TotalBill)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
                    .keyboardType(.numberPad)
                
                HStack() {
                    Text("How many people do you want to split with ?")
                    Spacer()
                }
                  
                
                TextField("Total number of people", text: $numOfPeople)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .keyboardType(.numberPad)
                
                HStack() {
                    Text("Tips ?")
                    Spacer()
                }
                
                Slider(value: $sliderValue, in: minimumValue...maximumvalue)
                    .padding()
                
                Text("\(Int(sliderValue)) $")
            }
            Spacer()
            VStack {
                Text("Total Bill per person is: \(payable_bill) $")
            }
            
            Spacer()
            Button(action: {
                let bill = Double (self.TotalBill)
                let people = Double (self.numOfPeople)
                
                self.payable_bill = (bill! + self.sliderValue) / people!
                
                print(self.payable_bill)
                
            }) {
                    HStack {
                        Spacer()
                        Text("Split Bill")
                            .foregroundColor(Color.white)
                            .bold()
                        Spacer()
                    }
                    
            }.padding().background(Color.green).cornerRadius(4.0)
            
        }.padding().background(Color.blue.edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
