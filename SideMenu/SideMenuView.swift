//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Shanezzar on 28/04/2021.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                SideMenuHeaderView()
                    .frame(height: 120)
                
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(
                        destination: Text(option.title),
                        label: {
                            SideMenuOptionView(viewModel: option)
                        })
                }
                
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
