RSpec.feature "Links page" do
	 scenario "Submit a new link to the links page" do
	 	visit "/links"
	 	fill_in("url", with: "http://www.google.co.uk")
	 	fill_in("title", with: "Google")
	 	click_button("Add link")
 		expect(page).to have_content "Google"
 	end
end
