//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Давид on 02.05.2021.
//

import SwiftUI

struct SettingsLabelView: View {
	// MARK: - PROPERTIES

	var labelText: String
	var labelImage: String

	// MARK: - BODY
	var body: some View {
		HStack {
			Text(labelText.uppercased())
				.fontWeight(.bold)
			Spacer()
			Image(systemName: labelImage)
		}
	}
}

// MARK: - PREVIEWS
struct SettingsLabelView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
