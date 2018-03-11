require 'pry'


def get_first_name_of_season_winner(data, season)
    winner = nil
    data.each do |the_season, season_array|
        if the_season == season
            season_array.each do |person_hash|
                if person_hash["status"] == "Winner"
                    winner = person_hash["name"].split
                    winner = winner[0]
                end
            end
        end
    end
    return winner
end

def get_contestant_name(data, occupation)
    woman = nil
    data.each do |season, season_array|
            season_array.each do |person_hash|
                if person_hash["occupation"] == occupation
                    woman = person_hash["name"]
                end
            end
    end
    return woman
end

def count_contestants_by_hometown(data, hometown)
    counter = 0
    data.each do |season, season_array|
        season_array.each do |person_hash|
            if person_hash["hometown"] == hometown
                counter += 1
            end
        end
    end
    return counter
end

def get_occupation(data, hometown)
    occupation = nil
    data.each do |season, season_array|
        season_array.each do |person_hash|
            if person_hash["hometown"] == hometown
                occupation = person_hash["occupation"]
                break
            end
        end
    end
    return occupation
end

def get_average_age_for_season(data, season)
    age = []
    age_sum = 0
    data.each do |the_season, season_array|
        if the_season == season
            season_array.each do |person_hash|
                age << person_hash["age"].to_f
                age_sum += person_hash["age"].to_f
            end
        end
    end
    return (age_sum/age.length).round
end
