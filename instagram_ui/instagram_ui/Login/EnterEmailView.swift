//
//  EnterEmailView.swift
//  instagram_ui
//
//  Created by 임채성 on 2024/07/31.
//

import SwiftUI

struct EnterEmailView: View {
    var body: some View {
        NavigationStack {
            VStack() {
                Text("이메일 주소 입력")
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.bottom, 5)
                
                Text("회원님에게 연락할 수 있는 이메일 주소를 입력하세요. 이 이메일 주소는 프로필에서 다른 사람에게 공개되지 않습니다.")
                    .font(.callout)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                
                TextField("이메일 주소", text: .constant(""))
                    .modifier(InstagramTextFieldModifier())
                
                Button {
                    print("다음")
                } label: {
                    Text("다음")
                        .foregroundStyle(.white)
                        .frame(width: 363, height: 42)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                
                Spacer()
            }
        }
    }
}

struct EnterEmailView_Previews: PreviewProvider {
    static var previews: some View {
        EnterEmailView()
    }
}
