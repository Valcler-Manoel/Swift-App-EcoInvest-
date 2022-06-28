/*
A ser continuado


import SwiftUI

struct CartButton: View {
    var numberOfProjetos: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
        Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProjetos > 0 {
                Text("\(numberOfProjetos)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
            }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProjetos: 1)
    }
}
}

*/
