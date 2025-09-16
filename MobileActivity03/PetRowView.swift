//
//  PetRowView.swift
//  MobileActivity03
//
//  Created by AGRM  on 19/08/25.
//

import SwiftUI

struct PetRowView: View {
    let pet: Pet

    var body: some View {
        HStack(spacing: 12) {
            Image(pet.image)
                .resizable()
                .scaledToFill()
                .frame(width: 95, height: 95)
                .clipShape(RoundedRectangle(cornerRadius: 14))
                .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.white.opacity(0.5), lineWidth: 0.5)
                )
                .shadow(radius: 1, y: 1)

            VStack(alignment: .leading, spacing: 4) {
                Text(pet.name)
                    .font(.title3.weight(.semibold))
            }

            Spacer()

            Image(systemName: "chevron.right")
                .font(.footnote)
                .foregroundStyle(.black)
        }
        .padding(16)
        .background(.thinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .stroke(Color.black.opacity(0.3), lineWidth: 1)
        )
    }
}

#Preview {
    PetRowView(pet: Pet(name: "Lulú", image: "Lulu", description: "Lulu", owner: "Galilea’s furbaby", gender: "Female"))
}
