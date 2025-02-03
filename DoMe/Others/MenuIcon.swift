//
//  MenuIcon.swift
//  DoMe
//
//  Created by Ethan John Paguntalan on 2/3/25.
//

import SwiftUI

struct MenuIcon: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Capsule()
                .frame(width: 14, height: 2.5)
            
            Capsule()
                .frame(maxWidth: .infinity)
                .frame(height: 2.5)
            
            Capsule()
                .frame(width: 10, height: 2.5)
        }
        .padding(4)
        .frame(width: 24, height: 24)
        .contentShape(Circle())
    }
}
#Preview {
    MenuIcon()
}
