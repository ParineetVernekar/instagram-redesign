//
//  ContentView.swift
//  instagram-redesign
//
//  Created by Parineet Vernekar on 27/07/2021.
//

import SwiftUI

struct ContentView: View {
    init() {
        //Use this if NavigationBarTitle is with Large Font
        //UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 20)!]
        
        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont.systemFont(ofSize: 25, weight: .semibold)]
    }
    var body: some View {
        NavigationView{
            ScrollView {
                HStack{
                    ForEach((1...5), id: \.self) {_ in
                        VStack {
                            Circle()
                                .frame(width: 60, height: 60)
                                .padding(8)
                            .shadow(color: .gray, radius: 8)
                            Text("parineet_v")
                                .font(.caption)
                        }
                    } .frame(alignment: .leading)
                }
                .padding()
                ForEach((1...12), id: \.self) {_ in
                   PostView()
                        .padding(.vertical)
                }
                
                Spacer()
                
            }.navigationTitle("Instagram")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            print("Edit button was tapped")
                        }) {
                            Image(systemName: "camera")
                                .foregroundColor(.black)
                                .frame(width: 50, height: 50)

                        }
                        .frame(width: 50, height: 50)
                    }
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("Edit button was tapped")
                        }) {
                            Image(systemName: "sparkles.tv")
                                .foregroundColor(.black)

                        }
                        .frame(width: 50, height: 50)
                        Button(action: {
                            print("Edit button was tapped")
                        }) {
                            Image(systemName: "paperplane")
                                .foregroundColor(.black)

                        }
                        .frame(width: 50, height: 50)
                    }
                    

                }
                .navigationBarTitleDisplayMode(.inline)
            
        }
        
        
    }
}

struct PostView: View{
    var body: some View{
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color(UIColor.lightGray))
                .padding(.horizontal)
                .shadow(color: .black, radius: 6)

            .frame(width: UIScreen.screenWidth, height: 450)
            VStack {
                HStack {
                    Circle()
                        .frame(width: 60, height: 60)
                        .padding(8)
                        .shadow(color: .black, radius: 2)
                    VStack{
                        HStack {
                            Text("Marques Brownlee")
                                .font(.title3)
                            Spacer()
                        }
                        HStack{
                            Text("Yesterday")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .frame(alignment: .leading)
                            Spacer()
                        }
                    }
                    Spacer()
                    Button(action: {
                        print("Edit button was tapped")
                    }) {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.black)

                    }
                }
                .padding(.horizontal, 60)
                .padding(.vertical, 15)
                Image( "instagramPostTest2")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    
                    .frame(width: UIScreen.screenWidth - 65)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(radius: 10)
                Spacer()
                HStack{
                    Button(action: {
                        print("Edit button was tapped")
                    }) {
                        HStack{
                        Image(systemName: "heart")
                            .foregroundColor(.black)
                        Text("117K")
                                .foregroundColor(.black)
                        }

                    }
                    
                    Button(action: {
                        print("Edit button was tapped")
                    }) {
                        HStack{
                        Image(systemName: "message")
                            .foregroundColor(.black)
                        Text("269")
                                .foregroundColor(.black)
                        }

                    }
                    Spacer()
                    Button(action: {
                        print("Edit button was tapped")
                    }) {
                        Image(systemName: "paperplane")
                            .foregroundColor(.black)
                      

                    }
                    
                    Button(action: {
                        print("Edit button was tapped")
                    }) {
                        Image(systemName: "bookmark")
                            .foregroundColor(.black)
                        

                    }
                }
                .padding(.horizontal, 70)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
