//
//  Login.swift
//  LoginView
//
//  Created by 임채성 on 2024/07/26.
//

import SwiftUI

extension Color {
    static let customBackground = Color(UIColor(red: 247/255, green: 248/255, blue: 250/255, alpha: 1.0))
}

struct Login: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color.customBackground.edgesIgnoringSafeArea(.all)
            
            VStack (alignment: .leading) {
                    Spacer()
                    Text("Welcome Back!")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .padding(.bottom, 5)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur " + "\n" + "adipising elist sed do eiusmod tempor")
                    .padding(.bottom, 20)
                
                    VStack (spacing: 20){
                        HStack {
                            Image(systemName: "person.fill")
                                .foregroundColor(.secondary)
                            
                            TextField("email", text: $email)
                                .disableAutocorrection(true)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10.0)
                        
                        HStack {
                            SecureField("Password", text: $password)
                            Image(systemName: "eye")
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10.0)
                    }
                    .padding(.bottom, 340)
                }
                .padding()
            
            VStack {
                
                HStack {
                    Spacer()
                    Text("Forgot yout password?")
                        .padding(.trailing, 20)
                }
            }
            .padding(.top, 125)
            
            Button {
                print("로그인 버튼 클릭")
            } label: {
                Text("Login")
                    .foregroundColor(.white)
                    .frame(width: 350, height: 50)
                    .background(Color.green)
                    .cornerRadius(5.0)
                    .padding(.top, 480)
            }
            .padding(.bottom, 240) // 하단 여백 추가
                         
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
