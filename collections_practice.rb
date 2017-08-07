require "pry"

def begins_with_r(array)
    array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
    words_containing_a = []
    array.collect do |word|
        if word.include?("a") == true
        words_containing_a.push(word)
        end
    end
    return words_containing_a
end

def first_wa(array)
    array.keep_if {|word| word.class == String}
    array.find do |word|
        word.start_with?("wa") == true
        end
end

def remove_non_strings(array)
    array.delete_if {|word| word.class != String}
end

def count_elements(array)
    new_array = []
    array.uniq.each do |item|
        item[:count] = array.count(item)
        new_array.push(item)
    end
    new_array
end

def merge_data(structure1,structure2)
    structure2 = structure2[0].values
    structure1[0].merge!(structure2[0])
    structure1[1].merge!(structure2[1])
    structure1
end

def find_cool(structure)
    cool_hash = []
    structure.each do |hash|
        if hash[:temperature] == "cool"
            cool_hash.push(hash)
        end
    end
    cool_hash
end

def organize_schools(schools)
    array_nyc = []
    array_sf = []
    array_chicago = []
    organize_schools = {}
    schools.each do |name, location_data|
        if location_data[:location] == "NYC"
            array_nyc.push(name)
        elsif location_data[:location] == "SF"
            array_sf.push(name)
        elsif location_data[:location] == "Chicago"
            array_chicago.push(name)
        end
    end
    organize_schools["NYC"] = array_nyc
    organize_schools["SF"]= array_sf
    organize_schools["Chicago"]= array_chicago
    organize_schools
end
