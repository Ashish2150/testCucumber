//
//  SignupView.swift
//  testCucumbrish
//
//  Created by Ashish Maurya on 28/01/23.
//

import SwiftUI

struct SignupView: View {
    @State private var txtEmail: String = ""
    @State private var txtPhone: String = ""
    @State private var txtPassword: String = ""
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text("SignUp")
                .padding(.top, 40.0)
                .font(.system(size: 45))
                .fontWeight(.semibold)
            
            VStack{
                HStack {
                    VStack(alignment: .leading){
                        Text("Email").padding(.top, 20.0)
                        TextField("Email", text: $txtEmail)
                            .frame(height: 40.0)
                            .textFieldStyle(.roundedBorder)
                            
                        
                        Text("Phone").padding(.top, 20.0)
                        TextField("Phone", text: $txtPhone)
                            .frame(height: 40.0)
                            .textFieldStyle(.roundedBorder)
                        
                        Text("Password").padding(.top, 20.0)
                        TextField("Password", text: $txtPassword)
                            .frame(height: 40.0)
                            .textFieldStyle(.roundedBorder)
                        
                        HStack{
                            Text("SignUp")
                                .padding([.leading, .trailing, ],20.0)
                                .padding([.top , .bottom, ],10.0)
                                .foregroundColor(.white)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(maxWidth: .infinity, minHeight: 45)
                                .background(.blue)
                                .cornerRadius(8.0)
                        }.padding(.top, 20)
                        
                        Button("Forgot Password?"){
                            
                        }
                        .padding(0.0)
                        .frame(minHeight: 45)
                        .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                        
                        HStack{
                            Button("Account already exist? Login here"){
                                dismiss()
                            }
                            .frame(minHeight: 45)
                            .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                            .navigationDestination(for: String.self) { _ in
                                //loginView(path: $path)
                            }
                            
                            Spacer()
                        }
                        .padding(.top, 20)
                        /**
                         NavigationLink(destination: SignupView()) {
                         HStack{
                         Text("SignUp")
                         .padding([.leading, .trailing, ],20.0)
                         .padding([.top , .bottom, ],10.0)
                         .foregroundColor(.white)
                         .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                         .frame(maxWidth: .infinity, minHeight: 45)
                         .background(.blue)
                         .cornerRadius(8.0)
                         }.padding(/*@START_MENU_TOKEN@*/.top, 30.0/*@END_MENU_TOKEN@*/)
                         */
                    }
                    
                   
                }
            }
        }.padding(.top, 40.0)
            .padding(.horizontal, 20.0)
        Spacer()
            .navigationBarBackButtonHidden()
    }
}


struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            SignupView()
        }

    }
}
