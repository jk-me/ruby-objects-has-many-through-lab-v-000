class Patient 
  attr_accessor :name, :appointments
  def initialize(name)
    @name=name
    @appointments =[]
  end 
  def new_appointment(doctor, date)
    a= Appointment.new(self, doctor,date)
    @appointments << a 
  end 
  def doctors
    self.appointments.collect{|a| a.doctor}
  end 
end   
