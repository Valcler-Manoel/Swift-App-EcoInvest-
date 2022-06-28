/*
 
A ser continuado

import SwiftUI

struct ProjetoRow: View {
    @EnvironmentObject var cartManager: CartManager

    var projeto: Projeto
    var body: some View {
        HStack(spacing: 20) {
            Image(projeto.image)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 10) {
                Text(projeto.name)
                    .bold()
                
                Text("$\(projeto.price)")
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness:  0.835))
                .onTapGesture{
                    cartManager.removeFromCart(projeto: projeto)
                }
        }
    }
}

struct ProjetoRow_Previews: PreviewProvider {
    static var previews: some View {
        ProjetoRow(projeto: projetolista[3])
            .environmentObject(CartManager())
    }
}

*/
