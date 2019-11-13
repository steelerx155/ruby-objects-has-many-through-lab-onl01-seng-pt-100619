class Doctor 
  attr_accessor :name, :patient 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
 def self.all
  @@all
 end
 
 def appointments
   Appointment.all.select do |app|
     app.doctor == self
   end
  end 
   
 
# def new_appointments(patient)
#   name = Appoiontment.new(Appoiontment)
# end
# end  



# def songs
#   Song.all.select do |song|
#     song.artist == self
#     end
  end