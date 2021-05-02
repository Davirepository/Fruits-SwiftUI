//
//  SettingsView.swift
//  Fruits
//
//  Created by Давид on 02.05.2021.
//

import SwiftUI

struct SettingsView: View {
	// MARK: - PROPERTIES

	@Environment(\.presentationMode) var presentationMode

	// MARK: - BODY
	var body: some View {
		NavigationView {
			ScrollView(.vertical, showsIndicators: false) {
				VStack(spacing: 20) {
					// MARK: - SECTION 1
					
					GroupBox(label:
								SettingsLabelView(labelText: "Fruits",
												  labelImage: "info.circle")
					) {
						Divider().padding(.vertical, 4)
						HStack(alignment: .center, spacing: 10){
							Image("logo")
								.resizable()
								.scaledToFit()
								.frame(width: 80, height: 80)
								.cornerRadius(9)
							Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are source of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
								.font(.footnote)
						}
					}
					// MARK: - SECTION 2
					// MARK: - SECTION 3
				}
				.navigationBarTitle(Text("Settings"),
									displayMode: .large)
				.navigationBarItems(trailing: Button(action: {
					presentationMode.wrappedValue.dismiss()}) {
						Image(systemName: "xmark")
					})
				.padding()
			}
		} //: Navigation
	}
}

// MARK: - PREVIEWS
struct SettingsView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsView()
			.preferredColorScheme(.dark)
			.previewDevice("iPhone 12")
	}
}