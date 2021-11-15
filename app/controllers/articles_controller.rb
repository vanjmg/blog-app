class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        # @article.name = params[:name]
        # @article.body = params[:body]

        if @article.save
            redirect_to articles_path
        else
            render :new
        end
    end

    def show
    end

    # PUT method for updating in database a product based on id  
    def update
        @article = Article.update(article_params)

        if @article.save
            redirect_to articles_path
        else
            render :edit
        end
    end

    # GET method for editing a product based on id 
    def edit
        @article = Product.find(params[:id])
    end

    def delete
    end

    private

    def article_params
        params.require(:article).permit(:name, :body)
    end

end
