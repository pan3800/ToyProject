//
//  TermsAndConditionsView.swift
//  CafeMap
//
//  Created by 임채성 on 2024/08/30.
//

import SwiftUI

struct TermsAndConditionsView: View {
    @State private var isAgreed = false
    @State private var isExpanded = false
    
    var body: some View {
        SignupBackgroundView {
            VStack (alignment: .leading){
               Text("이용약관 동의")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top, 30)
                    .padding(.bottom, 30)
                
                
                HStack {
                    Button {
                        isAgreed.toggle()
                    } label: {
                        Image(systemName: isAgreed ? "checkmark.square" : "square")
                            .foregroundColor(isAgreed ? .blue : .gray)
                            .font(.system(size: 24))
                            .foregroundStyle(Color.init(hex: "#EAEAEE"))
                    }
                    
                    Text("전체 이용약관에 동의합니다.")
                        .fontWeight(.semibold)
                        .font(.system(size: 16))
                        
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.init(hex: "#F6F8FE"))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                HStack {
                    Button {
                        isAgreed.toggle()
                    } label: {
                        Image(systemName: isAgreed ? "checkmark.square" : "square")
                            .foregroundColor(isAgreed ? .blue : .gray)
                            .font(.system(size: 24))
                            .foregroundStyle(Color.init(hex: "#EAEAEE"))
                    }
                    
                    Text("(필수) 개인정보 수집・이용에 동의합니다.")
                        .font(.system(size: 16))
                }
                .padding()
                
                VStack {
                    Text("""
                            여기에 이용약관 내용을 작성합니다. 이 내용은 사용자가 앱을 사용할 때 지켜야 할 규칙과 개발자의 책임 제한 등을 포함합니다.

                            예: 사용자는 앱을 합법적이고 올바른 용도로만 사용할 수 있으며, 앱 사용으로 인한 문제는 사용자가 책임집니다.
                            
                            더 자세한 내용이 있다면 여기에 계속 추가하세요.
                            """)
                            .font(.body)
                            .foregroundStyle(Color.gray)
                            .padding()
                            
                    
                    Button {
                            isExpanded.toggle() // 버튼 클릭 시 확장 상태 토글
                    } label: {
                        HStack (alignment: .center){
                            Text(isExpanded ? "접기" : "더보기") // 상태에 따라 버튼 텍스트 변경
                                .font(.body)
                                .foregroundColor(.black)
                                .padding(.horizontal)
                        }
                    }
                    .padding(.top, 10)
                }
                .frame(height: isExpanded ? nil: 115)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.init(hex: "#F4F3F7"))
                }
                
                HStack {
                    Button {
                        isAgreed.toggle()
                    } label: {
                        Image(systemName: isAgreed ? "checkmark.square" : "square")
                            .foregroundColor(isAgreed ? .blue : .gray)
                            .font(.system(size: 24))
                            .foregroundStyle(Color.init(hex: "#EAEAEE"))
                    }
                    
                    Text("(필수) 이용약관에 동의합니다.")
                        .font(.system(size: 16))
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)
                .padding(.top, 10)
                .padding(.bottom, 5)
                
                
                HStack {
                    Button {
                        isAgreed.toggle()
                    } label: {
                        Image(systemName: isAgreed ? "checkmark.square" : "square")
                            .foregroundColor(isAgreed ? .blue : .gray)
                            .font(.system(size: 24))
                            .foregroundStyle(Color.init(hex: "#EAEAEE"))
                    }
                    
                    Text("(필수) 위치기반서비스약관에 동의합니다.")
                        .font(.system(size: 16))
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)
                .padding(.bottom, 5)
                
                HStack {
                    Button {
                        isAgreed.toggle()
                    } label: {
                        Image(systemName: isAgreed ? "checkmark.square" : "square")
                            .foregroundColor(isAgreed ? .blue : .gray)
                            .font(.system(size: 24))
                            .foregroundStyle(Color.init(hex: "#EAEAEE"))
                    }
                    
                    Text("(필수) 만 14세 이상입니다.")
                        .font(.system(size: 16))
                }
                .padding(.horizontal)
                .padding(.bottom, 5)
                
                HStack {
                    Button {
                        isAgreed.toggle()
                    } label: {
                        Image(systemName: isAgreed ? "checkmark.square" : "square")
                            .foregroundColor(isAgreed ? .blue : .gray)
                            .font(.system(size: 24))
                            .foregroundStyle(Color.init(hex: "#EAEAEE"))
                    }
                    
                    Text("(선택) 마케팅 정보 수신에 동의합니다.")
                        .font(.system(size: 16))
                }
                .padding(.horizontal)
                
                
                Spacer()
                
                
                Button {
                    print("동의하기")
                } label: {
                    Text("동의하기")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                        .frame(width: 363, height: 42)
                        .background(Color.init(hex: "#B5BCFA"))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.bottom, 30)
                
               
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
          
            
            
        }
    }
}

struct TermsAndConditionsView_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndConditionsView()
    }
}
