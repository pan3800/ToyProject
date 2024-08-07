//
//  LoginAuthView.swift
//  Resolution_LoginView
//
//  Created by 임채성 on 2024/08/06.
//

import SwiftUI

struct LoginAuthView: View {
    @Binding var isPresented: Bool
    var body: some View {
       
        NavigationStack {
            Button(action: {
                    isPresented = false
                }) {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.gray)
                        .padding()
                        .padding(.trailing, 340)
                        .padding(.bottom, 10)
                }
            
            Spacer()
            
            VStack (spacing: 20) {
                
                VStack (spacing: 5) {
                    Text("아이디")
                        .foregroundStyle(.gray)
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    
                    TextField("이메일을 입력해 주세요.", text: .constant(""))
                        .modifier(TextFieldModifier())
                }
                
                VStack (spacing: 5){
                    Text("비밀번호")
                        .foregroundStyle(.gray)
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    
                    ZStack {
                        SecureField("비밀번호", text: .constant(""))
                            .modifier(TextFieldModifier())
                        Spacer()
                        Image(systemName: "eye")
                            .padding(.leading, 300)
                        
                    }
                    
                    HStack {
                        NavigationLink {
                            LoginView()
                        } label: {
                            Text("아이디 찾기")
                        }

                        NavigationLink {
                            LoginView()
                        } label: {
                            Text("비밀번호 찾기")
                        }
                    }
                    .padding(.leading, 180)
                    .padding(.top, 10)
                    
                    Spacer()
                }
            }
        }
    }
}


