# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      ## OmniAuthable
      t.string :provider, null: false, default: ""
      t.string :uid, null: false, default: ""

      t.string :email, null: false, default: ""

      t.timestamps null: false
    end
  end
end
