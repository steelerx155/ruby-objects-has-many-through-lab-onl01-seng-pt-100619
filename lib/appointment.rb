class Appointment
  @@all = [] 

  
  def initialize(date, patient, doctor)
    @date = "Monday, November 11th"
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  


end