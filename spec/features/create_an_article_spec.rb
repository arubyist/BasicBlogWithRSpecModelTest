require 'rails_helper'



feature "creating an article" do

  it "saves a valid article" do
    visit('/articles')
    click_link("New Article")

    blog_title = "A new blog post ##{rand(1000000)}"

    fill_in("article_title", with: blog_title)

    fill_in("article_text", with: "Look at me I have some thoughts yay")

# expect(page.body).to eq ''

    click_button("Save")

    expect(Article.last.title).to eq blog_title
  end

  it 'redirects to index if the article is valid' do
    # your turn to write a test
    visit('/articles')
    click_link("New Article")

    blog_title = "A new blog post ##{rand(1000000)}"

    fill_in("article_title", with: blog_title)

    fill_in("article_text", with: "Look at me I have some thoughts yay")



    click_button("Save")

    #expect(current_path).to eq(articles_path)
    # expect(page.body).to eq ''
    expect(page).to have_content("Article created")
  end
end
