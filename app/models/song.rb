class Song < ApplicationRecord
    validates :title, presence: true, uniqueness: { scope: :release_year }
    validates :release_year, presence: true, if: :released?
    validates :release_year, numericality: { less_than_or_equal_to: Date.today.year }, if: :released?
    validates :artist_name, presence: true

    def released?
        released == true
    end

    

end
