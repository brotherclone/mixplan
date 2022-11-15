class Setup < ActiveRecord::Migration[7.0]
  def self.up

    create_table :projects do |t|
      t.string :title
      t.timestamps
    end

    create_table :project_users do |t|
      t.timestamps
    end

    add_reference :project_users, :project, index: true
    add_reference :project_users, :user, index: true

    create_table :tracks do |t|
      t.string :title
      t.timestamps
    end

    create_table :project_tracks do |t|
      t.timestamps
    end

    add_reference :project_tracks, :project, index: true
    add_reference :project_tracks, :track, index: true


    create_table :track_versions do |t|
      t.string :title
      t.timestamps
    end

    add_reference :track_versions, :track, index: true

    create_table :user_roles do |t|
      t.string :name
      t.timestamps
    end

    add_reference :user_roles, :user, index: true

    create_table :project_user_roles do |t|
      t.timestamps
    end

    add_reference :project_user_roles, :user_role, index: true
    add_reference :project_user_roles, :project, index: true


    create_table :audio_file_services do |t|
      t.timestamps
    end

    add_reference :audio_file_services, :project, index: true

    create_table :audio_files do |t|
      t.timestamps
    end

    add_reference :audio_files, :track_version, index: true

    create_table :issues do |t|
      t.timestamps
    end

    add_reference :issues, :user, index: true

    create_table :track_issues do |t|
      t.timestamps
    end

    add_reference :track_issues, :issue, index: true
    add_reference :track_issues, :track_version, index: true

    create_table :track_stage_categories do |t|
      t.timestamps
    end

    create_table :track_stages do |t|
      t.timestamps
    end

    add_reference :track_stages, :track_stage_category, index: true

    create_table :track_issue_stages do |t|
      t.timestamps
    end

    add_reference :track_issue_stages, :track_stage, index: true
    add_reference :track_issue_stages, :track_issue, index: true


  end
  def self.down
    remove_reference :track_issue_stages, :track_issue
    remove_reference :track_issue_stages, :track_stage
    drop_table :track_issue_stages
    remove_reference :track_stages, :track_stage_category
    drop_table :track_stages
    drop_table :track_stage_categories
    remove_reference :track_issues, :issue
    remove_reference :track_issues, :track_version
    drop_table :track_issues
    remove_reference :issues, :user
    drop_table :issues
    remove_reference :audio_files, :track_version
    drop_table :audio_files
    remove_reference :audio_file_services, :project
    drop_table :audio_file_services
    remove_reference :project_user_roles, :project
    remove_reference :project_user_roles, :user_role
    drop_table :project_user_roles
    remove_reference :user_roles, :user
    drop_table :user_roles
    drop_table :track_versions
    remove_reference :project_tracks, :track
    remove_reference :project_tracks, :project
    drop_table :project_tracks
    drop_table :tracks
    remove_reference :project_users, :user
    remove_reference :project_users, :project
    drop_table :project_users
    drop_table :projects
  end
end
