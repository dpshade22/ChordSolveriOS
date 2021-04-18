//
//  ContentView.swift
//  Shared
//
//  Created by Dylan Shade on 4/7/21.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
        
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }

    var body: some View {
        NavigationView {
            ZStack {
                    Color(#colorLiteral(red: 0.9411764706, green: 0.8941176471, blue: 0.8431372549, alpha: 1))
                        .ignoresSafeArea()
                
                    VStack(alignment: .leading) {
                        
                        Spacer()
                        
                        Text("Chord")
                            .bold()
                            .font(.system(size: 100))
                        Text(" Solver")
                            .bold()
                            .font(.system(size: 100))
                        Spacer()
                        
                        VStack {
                            Text("app by dylan shade")
                                .bold()
                                .foregroundColor(Color(#colorLiteral(red: 0.8480681777, green: 0.8059388995, blue: 0.7702333331, alpha: 1)))
                                .padding()
                        }
                        
                            
                        VStack {
                            ZStack(alignment: .topLeading) {
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(maxWidth: .infinity, maxHeight: 75)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))

                                NavigationLink(destination: TriadView(), label: {
                                    Text("Chord Identifier")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .frame(maxWidth: 428, maxHeight: 75, alignment: .leading)
                                        .padding(.horizontal, 15)
                                })

                            }.padding(-10)
                            /*
                            ZStack(alignment: .topLeading) {
                                Rectangle()
                                    .edgesIgnoringSafeArea(.horizontal)
                                    .frame(maxWidth: .infinity, maxHeight: 75)
                                    .foregroundColor(Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)))
                                NavigationLink(destination: ChordSolverView(), label: {
                                    Text("Chord Solver")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .frame(maxWidth: 428, maxHeight: 75, alignment: .leading)
                                        .padding(.horizontal, 15)
                                })
                                    
                            }.padding(-10)
                            */
                            ZStack(alignment: .topLeading) {
                                Rectangle()
                                    .edgesIgnoringSafeArea(.horizontal)
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
                            ZStack(alignment: .topLeading) {
                                Rectangle()
                                    .edgesIgnoringSafeArea(.all)
                                    .frame(maxWidth: .infinity, maxHeight: 75)
                                    .foregroundColor(Color(#colorLiteral(red: 0.6235294118, green: 0.8470588235, blue: 0.8745098039, alpha: 1)))
                                NavigationLink(destination: IntervalView(), label: {
                                    Text("Intervals")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .frame(maxWidth: 428, maxHeight: 75, alignment: .leading)
                                        .padding(.horizontal, 15)
                                })

                                    
                            }.padding(-10)
                        }.frame(height: 175, alignment: .center)
                        
                    }.padding()
                    .edgesIgnoringSafeArea(.bottom)
                    .navigationBarTitle("App by Dylan Shade")
                    .navigationBarHidden(true)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
        }
    }
}
