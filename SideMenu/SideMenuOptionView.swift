//
//  SideMenuOptionView.swift
//  SideMenu
//
//  Created by Shanezzar on 28/04/2021.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack {
            Image(systemName: viewModel.imageName)
                .foregroundColor(.black)
            Text(viewModel.title)
            
            Spacer()
        }
        .padding()
        
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModel: .friends)
    }
}
