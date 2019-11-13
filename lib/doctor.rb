require 'pry'
class Doctor 
  
  attr_accessor :name, :patient, :appointment 
  
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
    app.doctor  == self
   end
  end 
   
 
  def new_appointment(date, patient)
    # binding.pry
    name = Appointment.new(self, date, patient)
    # patient_name = Appointment.new(Appointment)
  end
  
  def patients
    appointments.collect do |appt|
      appt.patient
    end
  end  
end