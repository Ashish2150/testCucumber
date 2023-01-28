//
//  loginView.swift
//  testCucumbrish
//
//  Created by Ashish Maurya on 22/01/23.
//

import SwiftUI

struct loginView: View {
    @State private var txtUsername: String = ""
    @State private var txtPassword: String = ""
    
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack(alignment: .leading){
            
                Text("Welcome to the login page ")
                    .padding(.top, 40.0)
                    .padding([.leading, .trailing], 15.0)
                    .font(.system(size: 45))
                    .fontWeight(.semibold)
                    
            
            VStack{
                HStack {
                    VStack(alignment: .leading){
                        
                        Text("User Name")
                        TextField("Username", text: $txtUsername)
                            .frame(height: 40.0)
                            .textFieldStyle(.roundedBorder)
                            
                        Text("Password").padding(.top, 20.0)
                        TextField("Password", text: $txtPassword)
                            .frame(height: 40.0)
                            .textFieldStyle(.roundedBorder)
                        
                        NavigationLink(destination: SignupView()) {
                                HStack{
                                    Button("New to here? Join Now"){
                                    }
                                    .padding(0.0)
                                    .frame(minHeight: 45)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                                    Spacer()
                                    Text("Login")
                                        .padding([.leading, .trailing, ],20.0)
                                        .padding([.top , .bottom, ],10.0)
                                        .contentShape(Rectangle()).foregroundColor(.white)
                                            .contentShape(Rectangle())
                                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                            .background(.blue)
                                            .cornerRadius(8.0)
                                }.padding(/*@START_MENU_TOKEN@*/.top, 30.0/*@END_MENU_TOKEN@*/)
                               
                            }
                    }
                }
            }.padding(.top, 40.0)
            .padding(.horizontal, 20.0)
            Spacer()
        }.navigationBarBackButtonHidden()
        
    }
}

struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView()
    }
}
