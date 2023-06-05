class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product

    def user
        User.find_by(id: user_id)
    end

    def product
        Product.find_by(id: product_id)
    end

    def print_review
        product_name = product.name
        user_name = user.name
        star_rating = star_rating
        comment = comment
    
        puts "Review for #{product_name} by #{user_name}: #{star_rating}. #{comment}"
    end

    def leave_review(user, star_rating, comment)
        reviews.create(user: user, star_rating: star_rating, comment: comment)
    end

    def print_all_reviews
        puts "Reviews for #{name}:"
    
        reviews.each do |review|
          user_name = review.user.name
          star_rating = review.star_rating
          comment = review.comment
    
          puts "Review by #{user_name}: #{star_rating}. #{comment}"
        end
    end

    def average_rating
        total_ratings = reviews.sum(:star_rating)
        total_reviews = reviews.count
    
        return 0 if total_reviews.zero?
    
        average = total_ratings.to_f / total_reviews
        average.round(2)
    end

end