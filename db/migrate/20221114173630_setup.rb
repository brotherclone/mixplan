class Setup < ActiveRecord::Migration[7.0]
  def self.up

    create_table :user_roles do |t|
      t.string :name
      t.timestamps
      t.string :project_permission
      t.string :track_permission
      t.string :user_permission
      t.string :project_user_permission
      t.string :issue_permission
      t.string :track_version_permission
      t.string :audio_file_permission
      t.string :audio_file_service_permission
    end

    add_reference :user_roles, :user, index: true

    create_table :track_stage_categories do |t|
      t.string :name
      t.integer :category_sequence
      t.timestamps
    end

    create_table :track_stages do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

    add_reference :track_stages, :track_stage_category, index: true

    create_table :audio_file_services do |t|
      t.string :name
      t.timestamps
    end

    create_table :projects do |t|
      t.string :title
      t.timestamps
    end

    add_reference :projects, :audio_file_service, index: true

    create_table :project_users do |t|
      t.timestamps
    end

    add_reference :project_users, :project, index: true
    add_reference :project_users, :user, index: true

    create_table :project_user_roles do |t|
      t.timestamps
    end

    add_reference :project_user_roles, :user_role, index: true
    add_reference :project_user_roles, :project_user, index: true

    create_table :tracks do |t|
      t.string :title
      t.timestamps
    end

    add_reference :tracks, :project, index: true

    create_table :track_versions do |t|
      t.string :version_number
      t.string :version_title
      t.timestamps
    end

    add_reference :track_versions, :track, index: true

    create_table :issues do |t|
      t.string :name
      t.integer :status
      t.timestamps
    end

    add_reference :issues, :track, index: true

    create_table :audio_files do |t|
      t.text :file_meta_blob
      t.timestamps
    end

    add_reference :audio_files, :track_version, index: true
    add_reference :audio_files, :audio_file_service, index: true

    create_table :track_issues do |t|
      t.integer :vote
      t.text :comment
      t.timestamps
    end

    add_reference :track_issues, :issue, index: true
    add_reference :track_issues, :project_user, index: true
    add_reference :track_issues, :track_version, index: true

    create_table :track_issue_stages do |t|
      t.timestamps
    end

    add_reference :track_issue_stages, :track_issue, index: true
    add_reference :track_issue_stages, :track_stage, index: true

  end


  def self.down
    remove_reference :track_issue_stages, :track_stage
    remove_reference :track_issue_stages, :track_issue
    drop_table :track_issue_stages
    remove_reference :track_issues, :track_version
    remove_reference :track_issues, :project_user
    remove_reference :track_issues, :issue
    drop_table :track_issues
    remove_reference :audio_files, :audio_file_service
    remove_reference :audio_files, :track_version
    drop_table :audio_files
    remove_reference :issues, :track
    drop_table :issues
    remove_reference :tracks, :project
    remove_reference :tracks, :track_versions
    drop_table :track_versions
    drop_table :tracks
    remove_reference :project_user_roles, :project_user
    remove_reference :project_user_roles, :user_role
    drop_table :project_user_roles
    remove_reference :project_users, :user
    remove_reference :project_users, :project
    drop_table :project_users
    remove_reference :projects, :audio_file_service
    drop_table :projects
    drop_table :audio_file_services
    remove_reference :track_stages, :track_stage_category
    drop_table :track_stages
    drop_table :track_stage_categories
    remove_reference :user_roles, :user
    drop_table :user_roles
  end
end
