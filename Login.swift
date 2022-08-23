//
//  Login.swift
//  swiftUIsection1 (iOS)
//
//  Created by Arun_Skyraan on 23/08/22.
//

import SwiftUI

struct Login: View {
    @State private var name = ""
    @State private var password = ""
    @FocusState private var nameIsFocused: Bool
    @State private var isCkeckBox = true
    var body: some View {
        ZStack{
            
            LinearGradient(colors: [.indigo, .blue],
                           startPoint: .top,
                           endPoint: .center)
            
            
            .ignoresSafeArea()
            
            VStack(spacing : 30){
                Text("SIGN IN")
                    .font(.system(size : 30))
                    .bold()
                    .foregroundColor(.white)
                HStack(spacing : 20){
                    Spacer(minLength: -5)
                    Image(systemName: "creditcard.fill")
                    TextField("Enter your Email", text: $name)
                    
                }
                .frame(width: 350, height: 50, alignment: .center)
                .background(.white)
                .cornerRadius(10)
                
                HStack(spacing : 25){
                    Spacer(minLength: -6)
                    Image(systemName: "key")
                    TextField("Enter password", text: $password)
                }
                .frame(width: 350, height: 50, alignment: .center)
                .background(.white)
                .cornerRadius(10)
                
                HStack{
                    Button(action: {
                        print("check")
                        isCkeckBox.toggle()
                    }, label: {
                        Image(systemName: isCkeckBox ? "checkmark.square.fill" : "square.fill")
                        Text("Remember me")
                    })
                    
                    
                    
                    Spacer()
                    Text("forget password?")
                    
                    
                }
                
                .font(Font.system(size: 18))
                .foregroundColor(.white)
                .padding(.horizontal,30)
                
                
                
                Button(action: {
                    print("Logged in successfully")
                }, label: {
                    Text("Login")
                })
                .frame(width: 75, height: 50, alignment: .center)
                .background(.white)
                .cornerRadius(10)
                Text("-OR-")
                Text("sign in with")
                    .foregroundColor(.white)
                HStack(){
                    Image("Fb")
                        .cornerRadius(10)
                    Image("Apple")
                        .cornerRadius(10)
                    Image("Gmail")
                        .cornerRadius(10)
                }
                HStack(spacing : 30){
                    Text("Don't hava an account?")
                    Text("sign up")
                        .bold()
                }
                .foregroundColor(.white)
                
            }
        }
        
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
