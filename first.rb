# app/models/clinic.rb
class Clinic < ApplicationRecord
  has_many :departments
end

# app/models/department.rb
class Department < ApplicationRecord
  belongs_to :clinic
  has_many :doctors
end

# app/models/doctor.rb
class Doctor < ApplicationRecord
  belongs_to :department
  has_one :specialty
end

# app/models/specialty.rb
class Specialty < ApplicationRecord
  belongs_to :doctor
end

# app/models/patient_card.rb
class PatientCard < ApplicationRecord
  belongs_to :clinic
  has_one :patient
end

# app/models/patient.rb
class Patient < ApplicationRecord
  belongs_to :patient_card
end
