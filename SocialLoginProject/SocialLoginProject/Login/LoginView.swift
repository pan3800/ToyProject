//
//  LoginView.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/09.
//

import SwiftUI

struct LoginView: View {
    @State private var isShowingLoginSheet = false
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("로그인이 필요해요.")
                .font(.system(size: 15))
            
            Button {
                isShowingLoginSheet.toggle()
            } label: {
                Text("로그인하기")
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 363, height: 42)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            Spacer()
        }
        .sheet(isPresented: $isShowingLoginSheet) {
            LoginSheetView(isShowing: $isShowingLoginSheet)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
