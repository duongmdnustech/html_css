class Person 
  @@count = 0

  def initialize
    @name
    @age

    @@count += 1 
  end

  def initialize(name)
    @name = name

    @@count += 1
  end

  def initialize(name, age)
    @name = name
    @age = age

    @@count += 1
  end

  def getName
    @name 
  end

  def getAge
    @age 
  end 

  def setName=(name)
    @name = name
  end 

  def setAge=(age)
    @age = age
  end 

  def introduce
    "My name is #@name. I\'m #@age years old"
  end 
  
  def self.total_count
    "Total number of people is #@@count."
  end 

  def self.id 
    @@count
  end
end

# Create 20 people
people = 20.times.map do
  Person.new("Person #{Person.id + 1}", 10 + Random.rand(80))
end

# Get under 18
under_18 = people.select { |i| i.getAge < 18 }

# Remove under 18
upper_18 = people.reject { |i| i.getAge < 18 }

# puts under_18.map { |i| i.getAge }

"""
Sort asc and desc respectively
"""
s_asc = people.sort { |a, b|  a.getAge <=> b.getAge } 
s_desc = people.sort { |b, a| a.getAge <=> b.getAge }
# puts s_desc.map { |i| i.getAge }

# Delete at specific index
puts "Enter the index of element to delete"
idx = gets
people.delete_at(idx.to_i)

# Get the youngest and the oldest
min = people.min { |a, b| a.getAge <=> b.getAge }
max = people.max { |a, b| a.getAge <=> b.getAge }

# puts "Before"
# puts people.map { |i| i.getAge } 

# Using map
people = people.map { |item| Person.new(item.getName, item.getAge + 1) }

# Using each
people.each { |item| item.setAge = item.getAge + 1 }

# Using for
for person in people do 
  person.setAge = person.getAge + 1
end

# Using while
idxw = 0
begin
  item = people.at(idxw)
  item.setAge = item.getAge + 1
  idxw += 1
end while idxw < people.length

# Using until
idxw = 0
begin
  item = people.at(idxw)
  item.setAge = item.getAge + 1
  idxw += 1
end until idxw >= people.length

# puts "After"
# puts people.map { |i| i.getAge }

# Get age
age_set = people.map { |item| item.getAge }

# Join arrays
people2 = 20.times.map do
  Person.new("Person #{Person.id + 1}", 10 + Random.rand(80))
end

arr_join = people.map { |i| i }.concat(people2)

# Exception handling
def catch_excp
  begin 
    puts "Do sth"
    raise "Oh no bugs!!!"
  rescue => e
    puts e.message
  ensure
    puts "Finish tasks"
  end
end

catch_excp