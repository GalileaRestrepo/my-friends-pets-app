//
//  PetDetailView.swift
//  MobileActivity03
//
//  Created by AGRM  on 19/08/25.
//

import SwiftUI

struct PetDetailView: View {
    let pet: Pet
    @State private var page = 0

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {

                // Slideshow
                TabView(selection: $page) {
                    ForEach(pet.gallery.indices, id: \.self) { i in
                        Image(pet.gallery[i])
                            .resizable()
                            .scaledToFill()
                            .frame(height: 400)
                            .frame(maxWidth: .infinity)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                            .tag(i)
                    }
                }
                .frame(height: 400)
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .interactive))

                // Info card
                VStack(alignment: .leading, spacing: 12) {
                    Text(pet.name)
                        .font(.largeTitle.bold())
                    Text(pet.description)
                        .font(.body)
                        .foregroundStyle(.black)
                }
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
                .overlay(
                    RoundedRectangle(cornerRadius: 18)
                        .stroke(Color.black.opacity(0.3), lineWidth: 1)
                )

                // Tags
                HStack(spacing: 10) {
                    Text(pet.owner)
                        .font(.subheadline.weight(.semibold))
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                        .background(.purple.opacity(0.6))
                        .clipShape(Capsule())
                        .overlay(Capsule().stroke(Color.black.opacity(0.08), lineWidth: 1))

                    Text(pet.gender)
                        .font(.subheadline.weight(.semibold))
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                        .background(.red.opacity(0.6))
                        .clipShape(Capsule())
                        .overlay(Capsule().stroke(Color.black.opacity(0.08), lineWidth: 1))
                }
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(16)
        }
        .background(
            LinearGradient(colors: [.green.opacity(0.55), .brown.opacity(0.35)],
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
        )
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    PetDetailView(pet: Pet(name: "Lulú", image: "Lulu", description: "This is Lulú. She was adopted as a kitten in the middle of the COVID-19 pandemic, about four years ago. She’s a long-haired calico who mostly stays indoors but loves going out to the garden. She’s very loving and affectionate, though she doesn’t like being held. She’s a Churu addict and loves chicken soup and watermelon.", owner: "Galilea’s furbaby", gender: "♂ Female", gallery: ["Lulu", "Lulu2"])
    )
}

