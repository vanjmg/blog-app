require 'rails_helper'

RSpec.describe Article, type: :model do

    let!(:article) {Article.new}

    context 'Validations' do
        it '1. Is not valid whitout a name' do
            article.body = 'Sample body'
            article.name = nil

            expect(article).to_not be_valid
            expect(article.errors).to be_present
            expect(article.errors.to_h.keys).to include(:name)
        end

        it '2. is not valid without body' do
            article.body = nil
            article.name = 'Sample name'
            
            expect(article).to_not be_valid
            expect(article.errors).to be_present
            expect(article.errors.to_hash.keys).to include(:body)
        end

        it '3. name has minimum length of 3' do
            article.name = 'na'
            article.body = 'body'

            expect(article).to_not be_valid
            expect(article.errors).to be_present
            expect(article.name.length).to be < 3
        end

        it '4. can create article' do
            Article.create(name: 'aaaaa', body: 'body')

            expect(Article.count).to eq 1
        end
    end
end