//
//  ContentView.swift
//  MobileActivity03
//
//  Created by AGRM  on 19/08/25.
//

// Clean code rules followed: casing rules(UpperCamelCase and lowerCamelCase), intention revealing names, small single-purpose units, consistent formatting, MVVM, etc.

import SwiftUI

struct ContentView: View {
    @State private var petVM = PetViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 14) {
                    ForEach(petVM.arrPets) { pet in
                        NavigationLink {
                            PetDetailView(pet: pet)
                        } label: {
                            PetRowView(pet: pet)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 8) {
                        Image(systemName: "pawprint.fill")
                            .imageScale(.medium)
                            .foregroundStyle(.primary)

                        Text("Meet My Friends’ Pets and Mine!")
                            .font(.title3.weight(.bold))
                            .fontDesign(.rounded)
                            
                        Image(systemName: "pawprint.fill")
                            .imageScale(.medium)
                            .foregroundStyle(.primary)
                    }
                }
            }
            .background(
                LinearGradient(colors: [.green.opacity(0.55), .brown.opacity(0.35)],startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            )
        }
    }
}

#Preview{
    ContentView()
}

