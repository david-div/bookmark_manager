
RSpec.feature "Home page" do
	 scenario "See a list of links" do
	 	Link.create(url: "http://www.google.co.uk", title: "Google")
 		 visit "/links"
 		 expect(page.status_code).to eq 200
 		 expect(page).to have_content "Google"
 	end
end
