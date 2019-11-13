class Patient
  
  attr_accessor :name, :appointment, :doctor
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select do |sched|
      sched.patient == self
    end
  end
  
  def new_appointment(doctor, date)
  Appointment.new(doctor, self, date)
  end
    
  def doctors
    appointments.map do |appt|
      self.doctor 
  end
 end
end