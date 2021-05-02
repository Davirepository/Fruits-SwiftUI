//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Давид on 02.05.2021.
//

import SwiftUI

struct SettingsRowView: View {
	// MARK: - PROPERTIES

	var name: String
	var content: String?
	var linkLabel: String?
	var linkDestination: String?

	// MARK: - BODY
	var body: some View {
		VStack {
			Divider().padding(.vertical, 4)
			HStack {
				Text(name).foregroundColor(.gray)
				Spacer()
				if let content = content {
					Text(content)
				} else if let linkLabel = linkLabel,
						  let linkDestination = linkDestination {
					Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
					Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
				} else {
					EmptyView()
				}
			}
		}
	}
}

// MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			SettingsRowView(name: "Developer", content: "David")
				.previewLayout(.fixed(width: 375, height: 60))
				.padding()
			SettingsRowView(name:"Website",
							linkLabel: "SwiftUI Masterclass",
							linkDestination: "swiftuimasterclass.com")
				.preferredColorScheme(.dark)
				.previewLayout(.fixed(width: 375, height: 60))
				.padding()
		}
	}
}
