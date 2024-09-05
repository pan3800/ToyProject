//
//  LoginSheetView.swift
//  CafeMap
//
//  Created by 임채성 on 2024/08/27.
//

import SwiftUI

struct LoginSheetView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    @Binding var isShowing: Bool
    @StateObject var loginViewModel: LoginViewModel
    
    var body: some View {
        
        NavigationStack {
            VStack {
                
                VStack(alignment: .leading){
                    Spacer()
                    
                    Text("아이디")
                        .foregroundStyle(Color.init(hex: "#C7C8CB"))
                    
                    TextField("이메일 주소", text: $email)
                        .textInputAutocapitalization(.never)
                        .padding(12)
                        .background(Color.init(hex: "#F5F6F8"))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.init(hex: "#EEEEF1"), lineWidth: 1)
                        }
                    
                    Text("비밀번호")
                        .foregroundStyle(Color.init(hex: "#C7C8CB"))
                        .padding(.top, 10)
                    HStack {
                        
                        if isPasswordVisible {
                            TextField("비밀번호를 입력해 주세요.", text: $password)
                                .textInputAutocapitalization(.never)
                        } else {
                            SecureField("비밀번호를 입력해 주세요.", text: $password)
                                .textInputAutocapitalization(.never)
                        }
                        
                        Button {
                            isPasswordVisible.toggle()
                        } label: {
                            Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(12)
                    .background(Color(hex: "#F5F6F8"))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.init(hex: "#EEEEF1"), lineWidth: 1)
                    }
                    
                    HStack {
                        Spacer()
                        
                        Text("아이디 찾기")
                            .font(.system(size: 14))
                            .foregroundStyle(Color.init(hex: "#B3B5BC"))
                        
                        Text("비밀번호 찾기")
                            .font(.system(size: 14))
                            .foregroundStyle(Color.init(hex: "#B3B5BC"))
                    }
                    
                    HStack {
                        Spacer()
                        Button {
                            Task {
                                await loginViewModel.kakaoLogin()
                            }
                        } label: {
                            Image("kakao_talk_btn_icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                        }
        
                        
                        Image("naver_btnG_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        
                        Image("apple_btn_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        
                        Spacer()
                        
                    }
                    .padding(.top, 35)
                
                    Spacer()
                    
                    Button {
                        print("로그인하기")
                    } label: {
                        Text("로그인 하기")
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.white)
                            .frame(width: 363, height: 42)
                            .background(Color.init(hex: "#B5BCFA"))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .padding(.bottom, 30)
                    
                }
                .padding(.horizontal)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("test")
                        isShowing = false
                    }) {
                        Image(systemName: "xmark")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

//struct LoginSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginSheetView()
//    }
//}
