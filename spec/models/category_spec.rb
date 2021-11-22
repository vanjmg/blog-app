require 'rails_helper'

# RSpec.describe Category, type: :model do
#     before(:all) do
#         @categories = Category.create(name: "Task Name")
#     end

#     context "CRUD Tests" do
#         it 'checks that a category can be created' do
#             expect(@categories).to be_valid
#         end

#         it 'category can be shown' do
#             expect(Category.find_by_name("Task Name")).to eq(@categories)
#         end

#         it 'category can be updated' do
#             @categories.update(name: "Task")
#             # Category.find_by_name("Task").should eq(@category)
#             expect(Category.find_by_name("Task")).to eq(@categories)
#         end
#     end
# end

RSpec.describe Category, type: :model do
    context 'CRUD test' do
        it 'can create category' do
            Category.create(name: "Van")
            # category.name = "Van"

            expect(Category.count).to eq 18
        end

        it 'can show category' do
            expect(Category.find_by_name("Van")).to eq(@category)
        end

        it 'can update category' do
            Category.update(name: "Ban")
            expect(Category.find_by_name("Ban")).to eq(@category = "Ban")
        end
    end
end
