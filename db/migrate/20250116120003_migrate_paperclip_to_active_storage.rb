class MigratePaperclipToActiveStorage < ActiveRecord::Migration[7.1]
  require 'open-uri'

  def up
    # This migration provides a template for migrating Paperclip attachments to ActiveStorage
    # You will need to customize this based on your specific models and attachment names
    #
    # Example for a User model with an 'avatar' attachment:
    #
    # User.find_each do |user|
    #   next unless user.avatar_file_name.present?
    #
    #   # Build the Paperclip path (adjust based on your paperclip config)
    #   path = Rails.root.join(
    #     'public', 'system', 'users', 'avatars',
    #     id_partition(user.id),
    #     'original',
    #     user.avatar_file_name
    #   )
    #
    #   if File.exist?(path)
    #     user.avatar.attach(
    #       io: File.open(path),
    #       filename: user.avatar_file_name,
    #       content_type: user.avatar_content_type
    #     )
    #   end
    # end
    #
    # Add similar blocks for each model with Paperclip attachments

    Rails.logger.info "Paperclip to ActiveStorage migration template created."
    Rails.logger.info "Please customize this migration for your specific models."
  end

  def down
    # ActiveStorage attachments would need to be manually reverted if needed
    Rails.logger.info "Manual reversion to Paperclip attachments would be required."
  end

  private

  def id_partition(id)
    # Paperclip's default ID partitioning scheme
    ("%09d" % id).scan(/.{3}/).join("/")
  end
end
