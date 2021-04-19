//
//  InputTriadAns.swift
//  ChordSolver (iOS)
//
//  Created by Dylan Shade on 4/12/21.
//

import SwiftUI

struct InputTriadAns: View {
    
    var remove: (() -> Void)? = nil
    
    @EnvironmentObject var viewModel: triadBuildViewModel
    @Environment(\.colorScheme) var colorScheme

    @State var offset = CGSize.zero
    @State var root: String = ""
    @State var triad: Bool = true

    var body: some View {
        VStack {
            HStack {
                ZStack {
                    RoundedRectangle.init(cornerRadius: 10.0)
                        .frame(maxWidth: 350, maxHeight: 50, alignment: .center)
                        .foregroundColor(.white)
                    TextField("Enter a note:", text: $viewModel.root)
                        .foregroundColor(.black)
                        .frame(maxWidth: 350, maxHeight: 70, alignment: .center)
                        .padding()
                }
            }
        }
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                VStack {
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.major ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "Major", active: viewModel.major)
                        }.ignoresSafeArea(edges: .horizontal)
                        .padding(.top)

                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.minor ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "Minor", active: viewModel.minor)
                        }.ignoresSafeArea(edges: .horizontal)
                        .padding(.top)

                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.aug ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "+", active: viewModel.aug)
                        }.ignoresSafeArea(edges: .horizontal)
                        .padding(.top)

                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.dim ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "o", active: viewModel.dim)
                        }.ignoresSafeArea(edges: .horizontal)
                        .padding(.top)
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.itA6 ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "It+6", active: viewModel.itA6)
                        }
                        .padding(.top)

                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.frA6 ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "Fr+6", active: viewModel.frA6)
                        }
                        .padding(.top)

                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.gerA6 ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "Ger+6", active: viewModel.gerA6)
                        }
                        .padding(.top)
                    }
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.MM7 ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "MM7", active: viewModel.MM7)
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.Mm7 ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "Mm7", active: viewModel.Mm7)
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.mm7 ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "mm7", active: viewModel.mm7)
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.hd7 ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "ø7", active: viewModel.hd7)
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.fd7 ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "o7", active: viewModel.fd7)
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.sus2 ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "Sus2", active: viewModel.sus2)
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(viewModel.sus4 ? Color(#colorLiteral(red: 0.9607843137, green: 0.7529411765, blue: 0.7529411765, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                                .frame(minWidth: 60, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                .transition(.scale)
                            qualityButton.init(name: "Sus4", active: viewModel.sus4)
                        }
                    }
                }
            }
        }
                
        Spacer()
        
        VStack(alignment: .leading){
            HStack {
                
                if viewModel.itA6 {
                    Text(viewModel.find6th())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)

                    Text(viewModel.root)
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)

                    Text(viewModel.find4th())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)
                    
                }
                else if viewModel.gerA6 {
                    Text(viewModel.find6th())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)

                    Text(viewModel.root)
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)

                    Text(viewModel.augSpic())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)
                    
                    Text(viewModel.find4th())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)
                }
                
                else if viewModel.frA6 {
                    Text(viewModel.find6th())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)

                    Text(viewModel.root)
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)

                    Text(viewModel.augSpic2())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)
                    
                    Text(viewModel.find4th())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)
                }
                
                else if viewModel.sus2 {
                    Text(viewModel.root)
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)

                    Text(viewModel.sus2nd())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)

                    Text(viewModel.sus2fifth())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)
                }
                
                else if viewModel.sus4 {
                    Text(viewModel.root)
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)

                    Text(viewModel.find4th())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)

                    Text(viewModel.sus4fifth())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)
                }
                
                
                else {
                    Text(viewModel.root)
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)

                    Text(viewModel.triadThird())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)

                    Text(viewModel.triadFifth())
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(10)
                    
                    if viewModel.MM7 || viewModel.Mm7 || viewModel.mm7 || viewModel.fd7 || viewModel.hd7 {
                        Text(viewModel.triadSev())
                            .font(.title)
                            .bold()
                            .foregroundColor(Color(.white))
                            .padding(10)
                    }
                }
            }
        }
        .frame(minWidth: 0, idealWidth: 100, maxWidth: 428, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
        .animation(.easeInOut)
        
    }

}

struct InputTriadAns_Previews: PreviewProvider {
    static var previews: some View {
        InputTriadAns()
    }
}


