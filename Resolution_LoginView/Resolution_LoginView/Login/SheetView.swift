//
//  SheetView.swift
//  Resolution_LoginView
//
//  Created by 임채성 on 2024/08/07.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    print("test")
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.gray)
                        .padding()
                }
            }
            Spacer()
            Text("This is a sheet")
                .font(.largeTitle)
            // Add your content here.
            Spacer()
        }
        .padding()
    }
}
