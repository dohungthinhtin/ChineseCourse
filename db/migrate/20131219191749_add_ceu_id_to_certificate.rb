class AddCeuIdToCertificate < ActiveRecord::Migration[4.2]
  def change
    add_reference :certificates, :ceu, index: true
  end
end
