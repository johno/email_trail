class CreateEmailTrails < ActiveRecord::Migration
  def self.up
    create_table :email_trails do |t|
      t.text :to
      t.text :cc
      t.text :bcc
      t.text :subject
      t.string :mailer_name
      t.string :message_name
      t.references :emailable, polymorphic: true
      t.timestamps
    end

    add_index :email_trails, :emailable_type
    add_index :email_trails, :emailable_id
  end

  def self.down
    drop_table :email_trails
  end
end
