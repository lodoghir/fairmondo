class RemovePaperclipColumns < ActiveRecord::Migration[7.1]
  def up
    # This migration removes Paperclip columns after data has been migrated to ActiveStorage
    # IMPORTANT: Only run this after verifying all attachments have been migrated!
    #
    # List all your models and their Paperclip attachment columns here:
    #
    # Example for User model with 'avatar' attachment:
    # if table_exists?(:users)
    #   remove_column :users, :avatar_file_name, :string if column_exists?(:users, :avatar_file_name)
    #   remove_column :users, :avatar_content_type, :string if column_exists?(:users, :avatar_content_type)
    #   remove_column :users, :avatar_file_size, :integer if column_exists?(:users, :avatar_file_size)
    #   remove_column :users, :avatar_updated_at, :datetime if column_exists?(:users, :avatar_updated_at)
    # end
    #
    # Repeat for each model with Paperclip attachments

    Rails.logger.info "Paperclip column removal template created."
    Rails.logger.info "Please customize and run after verifying ActiveStorage migration."
  end

  def down
    # Add columns back if needed (adjust types as necessary)
    # Example:
    # add_column :users, :avatar_file_name, :string
    # add_column :users, :avatar_content_type, :string
    # add_column :users, :avatar_file_size, :integer
    # add_column :users, :avatar_updated_at, :datetime

    Rails.logger.info "Manual restoration of Paperclip columns would be required."
  end
end
