class Doctor 
  attr_accessor :name, :appointments, :patients
  @@all=[]
  
  def initialize(name)
    @name=name 
    @@all<< self
    @appointments=[]
    @patients=[]
  end 
  def new_appointment(patient, date)
    a=Appointment.new(patient,self,date)
    @appointments << a 
    @patients << patient 
  end
    
end 

