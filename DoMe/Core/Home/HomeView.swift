//
//  HomeView.swift
//  DoMe
//
//  Created by Ethan John Paguntalan on 2/2/25.
//

import SwiftUI

//MARK: Todayview with the sidemenu
struct HomeView: View {
    
    @State var isSideMenuOpen = false

    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            SideMenu()
                .opacity(isSideMenuOpen ? 1 : 0)
                .offset(x: isSideMenuOpen ? 0 : -300)
                .rotation3DEffect(.degrees(isSideMenuOpen ? 0 : 30), axis: (x: 0, y: 1, z: 0))
            
            
            TodayView()
                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .rotation3DEffect(.degrees(isSideMenuOpen ? 30 : 0), axis: (x: 0, y: -1, z: 0))
                .offset(x: isSideMenuOpen ? 265 : 0)
                .scaleEffect(isSideMenuOpen ? 0.9 : 1)
                .ignoresSafeArea()
                .shadow(color: Color.black.opacity(0.12), radius: 10, x: -2, y: -5)
                .shadow(color: Color.black.opacity(0.12), radius: 10, x: 2, y: 0)
            
            Image(systemName: "xmark")
                .bold()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.leading)
                .offset(x: isSideMenuOpen ? 261 : 0)
                .offset(y: isSideMenuOpen ? 10 : 80)
                .opacity(isSideMenuOpen ? 1 : 0)
                .onTapGesture {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                        isSideMenuOpen.toggle()
                    }
                }
            
            MenuIcon()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.top, 8)
                .offset(x: isSideMenuOpen ? -80 : 20, y: isSideMenuOpen ? -10 : 0)
                .opacity(isSideMenuOpen ? 0 : 1)
                .onTapGesture {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                        isSideMenuOpen.toggle()
                    }
                }
        }
    }
}

#Preview {
    HomeView()
}
