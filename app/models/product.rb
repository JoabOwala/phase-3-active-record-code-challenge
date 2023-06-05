class Product < ActiveRecord::Base   
    has_many :reviews
    has_many :users, through: :reviews

    def reviews
        Review.where(product_id: id)
    end

    def users
        User.joins(:reviews).where(reviews: { product_id: id })
    end

end