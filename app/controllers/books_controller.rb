class BooksController < ApplicationController
  def new
    @book = Book.new
  end



  def index
    @books = Book.all
  end



  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    book = Book.new(book_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    book.save
    # 4. トップ画面へリダイレクト
    redirect_to book_path(book.id)  
  end



  def show
        @book = Book.find(params[:id])
  end




  def edit
  end




  private
  # ストロングパラメータ
  # 下は、book_paramsを定義している。また、これは最後に追加している。

  def book_params
    params.require(:book).permit(:title, :body)
  end


end
