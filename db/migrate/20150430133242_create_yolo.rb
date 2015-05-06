class CreateYolo < ActiveRecord::Migration
  def change
  	create_table :yolos do |t|
  		t.string :nom
  		t.string :prenom
  		t.string :adresse
  		t.string :pays
  	end
  end
end
