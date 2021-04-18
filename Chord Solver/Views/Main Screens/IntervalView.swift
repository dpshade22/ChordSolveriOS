//
//  ContentView.swift
//  Shared
//
//  Created by Dylan Shade on 4/7/21.
//

import SwiftUI

struct IntervalView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State private var bottom: String = ""
    @State private var top: String = ""
    @State private var num: Int = 0
    

    var body: some View {
        NavigationView {
            ZStack {
                    Color(#colorLiteral(red: 0.6235294118, green: 0.8470588235, blue: 0.8745098039, alpha: 1))
                        .ignoresSafeArea()
                
                    VStack(alignment: .center) {
                        
                        InputView(viewModel: AnsViewModel.init())
                                        
                        VStack {
                            ZStack(alignment: .topLeading) {
                                Rectangle()
                                    .frame(maxWidth: .infinity, maxHeight: 75)
                                    .foregroundColor(Color(#colorLiteral(red: 0.6235294118, green: 0.8470588235, blue: 0.8745098039, alpha: 1)))
                                    Text("Intervals")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .frame(maxWidth: .infinity, maxHeight: 75, alignment: .trailing)
                                        .padding(.horizontal, 15)
                            }.padding(-10)
                            ZStack(alignment: .topLeading) {
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(maxWidth: .infinity, maxHeight: 75)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                NavigationLink(destination: TriadView(), label: {

                                    Text("Chord Identifier")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .frame(maxWidth: .infinity, maxHeight: 75, alignment: .leading)
                                        .padding(.horizontal, 15)
                                })

                            }.padding(-10)
                            /*
                            ZStack(alignment: .topLeading) {
                                Rectangle()
                                    .edgesIgnoringSafeArea(.bottom)
                                    .frame(maxWidth: .infinity, maxHeight: 75)
                                    .foregroundColor(Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)))
                                NavigationLink(destination: ChordSolverView(), label: {
                                    Text("Chord Solver")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .frame(maxWidth: .infinity, maxHeight: 75, alignment: .leading)
                                        .padding(.horizontal, 15)
                                })
                                
                                
                            }.padding(-10)
                             */
                            ZStack(alignment: .topLeading) {
                                Rectangle()
                                    .edgesIgnoringSafeArea(.all)
                                    .frame(maxWidth: .infinity, maxHeight: 75)
                                    .foregroundColor(Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                NavigationLink(destination: ScalesView(), label: {
                                    Text("Scales")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .frame(maxWidth: 428, maxHeight: 75, alignment: .leading)
                                        .padding(.horizontal, 15)
                                })
                                    
                            }.padding(-10)
                            

                        }
                        .frame(height: 175, alignment: .center)
                        .padding(.top, 100)
                        
                    }.padding()
                    .edgesIgnoringSafeArea(.bottom)
                    .navigationBarTitle("Interval Solver")
            }
        }.navigationBarHidden(true)
    }
}

struct IntervalView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IntervalView()
                .preferredColorScheme(.light)
        }
    }
}

