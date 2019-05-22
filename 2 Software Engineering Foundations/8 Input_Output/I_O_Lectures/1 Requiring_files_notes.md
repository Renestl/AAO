# Requiring Files

As our programs grow more and more complex, we'll want to separate code into many files. We've been using this organization a bit so far in the course: we often separate our test code (spec files) from our actual implementation files. In the previous RSPEC based projects, you may have noticed the /spec and /lib folders found in each project root.

## A Better Hotel design

Below is one way we could organize our different files. `project_root` is our outermost folder that will contain everything. Names that end in `.rb` are files, names that don't end in `.rb` are folders:

```
project_root
  ├── pet_hotel.rb
  ├── cat.rb
  └── other_animals
      └── dog.rb
```

However, if `PetHotel` and `Cat` exist in separate files, how can we connect the two? We need to "import" `cat.rb` into `pet_hotel.rb`. In other words, we need to require `cat.rb` in `pet_hotel.rb`.

### Require Relative

Keep in mind the folder structure above and take a look at the code we could have in each file:

```
# project_root/cat.rb
class Cat
  def initialize(name)
    @name = name
  end
end
```

```
# project_root/other_animals/dog.rb
class Dog
  def initialize(name)
    @name = name
  end
end
```

```
# project_root/pet_hotel.rb

# Let's require the last two files, by specifying their path's relative to this pet_hotel.rb file
require_relative "./cat.rb"
require_relative "./other_animals/dog.rb"

class PetHotel
  def initialize(name)
    @name = name
    @guests = []
  end

  def check_in(guest)
    @guests << guest
  end
end

hotel = PetHotel.new("Animal Inn")

cat = Cat.new("Sennacy")
dog = Dog.new("Fido")

hotel.check_in(cat)
hotel.check_in(dog)

p hotel
# <PetHotel:0x007ffe7f01af60
#   @name="Animal Inn",
#   @guests=[
#     #<Cat:0x007ffe7f01aee8 @name="Sennacy">,
#     #<Dog:0x007ffe7f01ae98 @name="Fido">
#   ]
# >
```

`require_relative` is a method we can use to specify a path to another ruby file. As it's name suggests, we need to specify a path that is relative to our current location.

### require vs require_relative

As a rule of thumb, we'll use the plain `require` where gems are involved.

