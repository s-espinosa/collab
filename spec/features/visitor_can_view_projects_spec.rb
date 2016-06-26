require 'rails_helper'

RSpec.feature "Visitor visits root" do
  scenario "they can see new projects" do
    3.times do |i|
      Project.create(title: "Project#{i}")
    end
    visit '/'

    within("#projects") do
      expect(page).to have_content("Project1")
      expect(page).to have_content("Project2")
      expect(page).to have_content("Project3")
    end
  end
end
