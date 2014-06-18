require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)
    dogs.length
    # could also do:
    # dogs.count
end

def name_lengths(dogs)
    dogs.collect {|x| x.length}
    # could also do:
    # dogs.each {|dog| dog.length}
    
    # could also do:
    # dogs.each do |dog_name|
    # arry.push(dog_name.length)  #with "each" you have to create a new array
    # end
    
    # could also do:
    # dogs.collect do |dog|  #"collect" returns a new array
    # dog.length
    # end
    
    # could also do:
    # dogs.map do |dog|  #"map" returns a new array, just like "collect"
    # dog.length            # "map" is the exact same as "collect"
    # end
end

def reverse_dog_names(dogs)
    dogs.collect {|x| x.reverse}
    # could also do??? don't know if this works:
    #z=[]
    #dogs.each do |dog|
    #y = dogs.reverse
    #end
    
end

def first_three_dogs_with_each(dogs)
    #first_three_dogs =[]
    #counter = 0
    #dogs.each do |dog|
    #    if counter ==3
    #        break
    #    end
    #first_three_dogs.push(dog)
    #counter = counter +1
    
    array=[]
    dogs.each_with_index do |dog, index|
        if index ==3
            return array
        end
        array.push(dog)
        end
  
end

def first_three_dogs_without_each(dogs)
    dogs[0..2] #slicing an array
end

def reverse_case_dog_names(dogs)
    #dogs.map do |x|  #?????
        #first_letter = dog[0].downcase
        #rest = dog[1..-1].upcase
        #"#{x[0]}"
        
    # could also do:
    #dogs.map{|dog| dog.swapcase}
    
    # could also do:
    inverse_dog_names = []  #itnitialize an array (place holder)... Private variable
    dogs.each do |dog|
        new_dog_name = dog.swapcase
        inverse_dog_names.push(new_dog_name)
    end
    inverse_dog_names  #return value
    
end

def sum_of_all_dog_name_lengths(dogs) # "dogs" would be a public
    #or, could use "reduce" method
    sum = 0  #itnitialize a variable (place holder)... Private variable
    dogs.each do |x|
        sum =sum + x.length
        end
    sum #return value
end

def dogs_with_long_names(dogs)
    # could also do:
    #    names = [] #itnitialize
    #    dogs.each do |x|
    #        if x.length > 4
    #            names.push(true)
    #            else
    #            names.push(false)
    #        end
    #    end
    #    names #return value
    
    
    names = [] #itnitialize
    dogs.each do |x|
        names.push(x.length > 4)
    end
    names #return value
    
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80



check("how_many_dogs", how_many_dogs(dogs) == 6)
check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])


#--Start-- Trying Stuff Out
my_awesome_dog_array = ["a", "c", "f"]
another_dog_array = ["Kiko"]

check("how_many_dogs", how_many_dogs(my_awesome_dog_array) == 3)
check("how_many_dogs", how_many_dogs(another_dog_array) == 1)
# --End-- Trying Stuff Out


