//
//  ContentView.swift
//  Fruits
//
//  Created by Давид on 01.05.2021.
//

import SwiftUI

struct ContentView: View {
	// MARK: - PROPERTIES

	@State private var isShowSettings = false
	var fruits: [Fruit] = fruitsData

	// MARK: - BODY

	var body: some View {
		NavigationView {
			List {
				ForEach(fruits.shuffled()) { fruit in
					NavigationLink(destination: FruitDetailView(fruit: fruit)){
						FruitRowView(fruit: fruit)
							.padding(.vertical, 4)
					}
				}
			}
			.listStyle(InsetGroupedListStyle())
			.navigationTitle("Fruits")
			.navigationBarItems(
				trailing: Button(action: { isShowSettings = true }) {
				Image(systemName: "slider.horizontal.3")
			})
			.sheet(isPresented: $isShowSettings) {
				SettingsView()
			}
		}
	}
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(fruits: fruitsData)
			.previewDevice("iPhone 12")
	}
}
