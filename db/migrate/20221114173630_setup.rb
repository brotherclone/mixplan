class Setup < ActiveRecord::Migration[7.0]
  def self.up

    create_table :project do |t|
      t.string :title
      t.timestamps
    end

    create_table :project_user do |t|
      t.timestamps
    end

    add_reference :project_user, :project, index: true
    add_reference :project_user, :user, index: true

    create_table :track do |t|
      t.string :title
      t.timestamps
    end

    add_reference :track, :project, index: true

    create_table :project_track do |t|
      t.timestamps
    end

    add_reference :project_track, :project, index: true
    add_reference :project_track, :track, index: true


    create_table :track_version do |t|
      t.string :title
      t.timestamps
    end

    add_reference :track_version, :track, index: true

    create_table :user_role do |t|
      t.string :name
      t.timestamps
    end

    create_table :project_user_role do |t|
      t.timestamps
    end

    add_reference :project_user_role, :user_role, index: true
    add_reference :project_user_role, :project, index: true
    add_reference :project_user_role, :user, index: true


    create_table :audio_file_service do |t|
      t.timestamps
    end

    add_reference :audio_file_service, :project, index: true

    create_table :audio_file do |t|
      t.timestamps
    end

    add_reference :audio_file, :track_version, index: true

    create_table :issue do |t|
      t.timestamps
    end

    add_reference :issue, :user, index: true

    create_table :track_issue do |t|
      t.timestamps
    end

    add_reference :track_issue, :issue, index: true
    add_reference :track_issue, :track_version, index: true

    create_table :track_stage_category do |t|
      t.timestamps
    end

    create_table :track_stage do |t|
      t.timestamps
    end

    add_reference :track_stage, :track_stage_category, index: true

    create_table :track_issue_stage do |t|
      t.timestamps
    end

    add_reference :track_issue_stage, :track_stage, index: true
    add_reference :track_issue_stage, :track_issue, index: true


  end
  def self.down
    remove_reference :track_issue_stage, :track_issue
    remove_reference :track_issue_stage, :track_stage
    drop_table :track_issue_stage
    remove_reference :track_stage, :track_stage_category
    drop_table :track_stage
    drop_table :track_stage_category
    remove_reference :track_issue, :issue
    remove_reference :track_issue, :track_version
    drop_table :track_issue
    remove_reference :issue, :user
    drop_table :issue
    remove_reference :audio_file, :track_version
    drop_table :audio_file
    remove_reference :audio_file_service, :project
    drop_table :audio_file_service
    remove_reference :project_user_role, :user
    remove_reference :project_user_role, :project
    remove_reference :project_user_role, :user_role
    drop_table :project_user_role
    drop_table :user_role
    drop_table :track_version
    remove_reference :project_track, :track
    remove_reference :project_track, :project
    drop_table :project_track
    remove_reference :track, :project
    drop_table :track
    remove_reference :project_user, :user
    remove_reference :project_user, :project
    drop_table :project_user
    drop_table :project
  end
end
