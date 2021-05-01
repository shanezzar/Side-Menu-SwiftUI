//
//  ContentView.swift
//  SideMenu
//
//  Created by Shanezzar on 28/04/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isMenuShowing: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isMenuShowing {
                    SideMenuView()
                }
                HomeView(isMenuShowing: $isMenuShowing)
                    .cornerRadius(isMenuShowing ? 20 : 10)
                    .offset(x: isMenuShowing ? 300 : 0, y: isMenuShowing ? 44 : 0)
                    .scaleEffect(isMenuShowing ? 0.8 : 1.0)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()) {
                            isMenuShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    @Binding var isMenuShowing: Bool
    
    var body: some View {
        ZStack {
            Color(.white)
            
            Text("Hello, world!")
                .padding()
            
            if isMenuShowing {
                Color.white
                    .opacity(0.0001)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            isMenuShowing.toggle()
                        }
                    }
            }
        }
    }
}
