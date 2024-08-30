//
//  TermsAndConditionsView.swift
//  CafeMap
//
//  Created by 임채성 on 2024/08/30.
//

import SwiftUI

struct TermsAndConditionsView: View {
    @State private var isAgreed = false
    
    var body: some View {
        SignupBackgroundView {
            Text("TermsAndConditionsView")
        }
    }
}

struct TermsAndConditionsView_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndConditionsView()
    }
}
