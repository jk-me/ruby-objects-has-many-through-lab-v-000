class Patient 
  attr_accessor :name, :appointments
  @@all =[]
  def initialize(name)
    @name=name
    @appointments =[]
    @@all << self 
  end
  def self.all 
    @@all
  end 
  def new_appointment(doctor, date)
    a= Appointment.new(self, doctor,date)
    Appointment.all << a
    @appointments << a 
  end 
  def doctors
    self.appointments.collect{|a| a.doctor}
  end 
end   
