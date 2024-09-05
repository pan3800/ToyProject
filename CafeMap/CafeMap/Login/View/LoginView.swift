//
//  LoginView.swift
//  CafeMap
//
//  Created by 임채성 on 2024/08/27.
//

import SwiftUI

struct LoginView: View {
    @State private var isShowingLoginSheet = false
    
    var body: some View {
        
        VStack {
            Text("로그인이 필요해요.")
                .fontWeight(.semibold)
                .font(.system(size: 20))
            
            Text("집 근처 주변 카페 둘러봐요.")
                .foregroundStyle(Color.gray.opacity(10))
            
            Button {
                isShowingLoginSheet.toggle()
            } label: {
                Text("로그인하기")
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .frame(width: 363, height: 42)
                    .background(Color.init(hex: "#4B56C7"))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        .sheet(isPresented: $isShowingLoginSheet) {
            LoginSheetView(isShowing: $isShowingLoginSheet, loginViewModel: LoginViewModel())
                .presentationDetents([.fraction(0.9), .large])
                
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
