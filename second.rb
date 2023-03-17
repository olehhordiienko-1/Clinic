# db/migrate/create_clinics.rb
class CreateClinics < ActiveRecord::Migration[6.1]
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.timestamps
    end
  end
end

# db/migrate/create_departments.rb
class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.references :clinic, foreign_key: true
      t.timestamps
    end
  end
end

# db/migrate/create_doctors.rb
class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialty
      t.references :department, foreign_key: true
      t.timestamps
    end
  end
end

# db/migrate/create_specialties.rb
class CreateSpecialties < ActiveRecord::Migration[6.1]
  def change
    create_table :specialties do |t|
      t.string :name
      t.references :doctor, foreign_key: true
      t.timestamps
    end
  end
end

# db/migrate/create_patient_cards.rb
class CreatePatientCards < ActiveRecord::Migration[6.1]
  def change
    create_table :patient_cards do |t|
      t.string :number
      t.references :clinic, foreign_key: true
      t.timestamps
    end
  end
end

# db/migrate/create_patients.rb
class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.references :patient_card, foreign_key: true
      t.timestamps
    end
  end
end
