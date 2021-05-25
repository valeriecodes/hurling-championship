class CreateChampionships < ActiveRecord::Migration[6.0]
  def change
    create_table :championships do |t|
      t.datetime :date
      t.integer :year
      t.string :location
      t.references :winner, references: :club, index: true
      t.references :match, index: true
    end

    create_table :clubs do |t|
      t.string :name
    end

    create_table :matches do |t|
      t.string :name
      t.string :score
      t.references :club_1, references: :club, index: true
      t.references :club_2, references: :club, index: true
    end
  end
end
