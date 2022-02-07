feature 'Bookmarks' do
  scenario 'can view bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "https://stackoverflow.com"
    expect(page).to have_content "https://tenor.com"
    expect(page).to have_content "https://www.gov.uk/government/organisations/department-for-work-pensions"
  end
end