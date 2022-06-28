//
//  HomeView2.0.swift
//  EcoInvest
//
//  Created by aluno on 24/05/22.
//

import SwiftUI

struct HomeView2_0: View {
    init(){
        UITabBar.appearance().barTintColor = .systemBackground
    }
    
    @State var selectedIndex = 0
    
    let tabBarImagesNames = ["person.fill", "wrench.and.screwdriver.fill", "suitcase.fill"]
    
    var body: some View {
        VStack{
            ZStack {
                switch selectedIndex {
                case 0:
                    PerfilUsuarioView()
                case 1:
                  ProjetosView()
                    
                default:
                    EmpresasView()
                }
            }
                Spacer()

            HStack{
                ForEach(0..<3){num in
                    Button(action: {
                        selectedIndex = num
                    },
                    label:{
                            Spacer()
                           Image(systemName: tabBarImagesNames[num])
                            .font(.system(size:27, weight: .bold))
                            .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: 0.7))
                           Spacer()
                    })
                }
            }
        }
    }
}


struct HomeView2_0_Previews: PreviewProvider {
    static var previews: some View {
        HomeView2_0()
    }
}
