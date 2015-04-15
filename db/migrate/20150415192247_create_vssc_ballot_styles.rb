class CreateVsscBallotStyles < ActiveRecord::Migration
  def change
    create_table :vssc_ballot_styles do |t|
      t.string :object_id
      t.string :ballot_style_id
      t.timestamps null: false
    end
    add_reference :vssc_ballot_styles, :vssc_gp_unit, index: true
  end
end
