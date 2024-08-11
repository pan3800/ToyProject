//
//  LoginView.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/09.
//

import SwiftUI

struct LoginView: View {
    //@State private var isShowingLoginSheet = false
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image("instagramLogo2")
                .resizable()
                .frame(width: 200, height: 57)
                .padding(.bottom, 10)
            
            Image("profile_penguin")
                .resizable()
                .frame(width: 100, height: 90)
                .clipShape(Circle())
                .shadow(radius: 5)
                .foregroundColor(Color.gray)
                .padding(.bottom, 10)
              
            Text("로그인이 필요해요.")
                .font(.system(size: 15))
            
            Button {
                print("eee")
                //isShowingLoginSheet.toggle()
            } label: {
                Text("Log in")
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 363, height: 42)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            NavigationLink(destination: SwitchAccountView()) {
                        Text("Switch accounts")
                            .foregroundColor(.blue)
                            .padding(.top, 5)
            }
            
            Spacer()
        }
//        .sheet(isPresented: $isShowingLoginSheet) {
//            LoginSheetView(isShowing: $isShowingLoginSheet)
//                .presentationDetents([.medium, .large])
//        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
