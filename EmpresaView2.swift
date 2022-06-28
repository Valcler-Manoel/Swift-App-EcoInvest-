//
//  EmpresaView2.swift
//  EcoInvest
//
//  Created by aluno on 28/05/22.
//

import SwiftUI

struct GrowingButton2: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title)
            .multilineTextAlignment(.center)
            .frame(width: 250, height: 60)
            .background(Color("Green-System"))
            .cornerRadius(15)
            .shadow(radius: 2)
            .foregroundColor(Color.black)
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct EmpresaView2: View {
    @State var offset: CGFloat = 0
    
    var body: some View {
        ZStack{
        
            Color(UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            
        ScrollView(.vertical, showsIndicators: false,
               content: {
            VStack(spacing :15){
                
                GeometryReader{proxy -> AnyView in
                    
                    let minY = proxy.frame(in: .global).minY
                    
                    DispatchQueue.main.async{
                        self.offset = minY
                    }
                    
                    return AnyView(
                        
                        ZStack{
                            Image("amazon_wallpaper")
                                .resizable()
                                .aspectRatio( contentMode: .fill)
                                .frame(width:getRect().width,height: minY > 0 ? 180 + minY : nil, alignment: .center)
                                .cornerRadius(0)
                        }
                            .frame(height: minY > 0 ? 180 + minY : nil)
                        .offset(y: minY > 0 ? -minY : 0)
                    )
                }
                .frame(height:180)
                
                VStack{
                
                    HStack{
                        Image("Amazon")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay{
                            Circle().stroke(.white, lineWidth: 4)
                        }
                        .shadow(radius: 5)
                        .padding( .top, -30)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .center, spacing: 10, content: {
                            Text(empresa_padrao.nome)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding(5)
                            .cornerRadius(15)
             
                        })
                    
                    Spacer()
                    ZStack{
                        
                    
                    HStack {
                        Image("delete-bin-6-fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .padding(.top, 25)
                            .padding(.leading, -0)
                            .shadow(radius: 5)
         
                        VStack {
                            Text("Implementacao de Áreas Verdes")
                                .font(.title2)
                                .cornerRadius(15)
                                .padding(.top, 15)
                                .shadow(radius: 2)
         
                            HStack {
                                Button("INVESTIR") {
                                    print("...")
                                }
                                .buttonStyle(GrowingButton2())
                            }
                        }
                        }
                            
                    }
                }
            }
        })
            .ignoresSafeArea(.all, edges: .top)
    }
    }
}

struct EmpresaView2_Previews: PreviewProvider {
    static var previews: some View {
        EmpresaView2()
    }
}

extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
