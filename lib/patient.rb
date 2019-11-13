class Patient
  attr_accessor :name, :doctor, :appointment
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointments.all.select do |sched|
      sched.patient == self
    end
  end
  
  def new_appointment(doctor, date)
    Doctor.new(doctor, date, self)
  end
    
  def doctors
      Appointment.all.select do |app|
        app.patient == self
      end
  end  
end