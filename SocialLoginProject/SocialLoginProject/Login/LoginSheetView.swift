//
//  LoginSheetView.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/09.
//

import SwiftUI

struct LoginSheetView: View {
    //@Binding var isShowing: Bool

    var body: some View {
        NavigationView {
            VStack() {
                Spacer()
                
                Text("아이디")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.horizontal)

                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("test")
                      //  isShowing = false
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

struct LoginSheetView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSheetView()
    }
}
