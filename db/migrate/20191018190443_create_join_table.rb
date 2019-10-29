class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :companies, :services do |t|
      # t.index [:company_id, :service_id]
      # t.index [:service_id, :company_id]
    end
  end
end
