require 'rails_helper'

feature "User views the clinic index page" do
  scenario "user sees a list of clinics" do
    clinic_1 = Clinic.create(name: "Advanced Metaphysical Un-Object Programming", description: "Ugghh wut?", speaker: "Steven Universe")
    clinic_2 = Clinic.create(name: "Big-U Notation", description: "Big O notation but with the letter U", speaker: "Craig Barstow")

    visit '/'

    expect(page).to have_content clinic_1.name
    expect(page).to have_content clinic_2.name

    expect(page).to_not have_content clinic_1.description
    expect(page).to_not have_content clinic_2.description
  end
end
