# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130925062848) do

  create_table "abbrv_titles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "batches", :force => true do |t|
    t.string   "name"
    t.string   "name_short"
    t.date     "date_beg_qc"
    t.boolean  "corrections_needed"
    t.boolean  "passed_validation"
    t.date     "date_UCB_UCR"
    t.date     "date_UCR_LC"
    t.boolean  "LC_approve"
    t.integer  "valid_reels"
    t.integer  "valid_issues"
    t.integer  "size"
    t.string   "server_location"
    t.boolean  "ingested"
    t.text     "notes"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.date     "ingest_date"
    t.date     "embargo_end_date"
    t.integer  "grant_id"
    t.integer  "num_tiffs"
  end

  add_index "batches", ["grant_id"], :name => "index_batches_on_grant_id"

  create_table "grants", :force => true do |t|
    t.integer  "beg_year"
    t.integer  "end_year"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "project_id"
  end

  create_table "issues", :force => true do |t|
    t.string   "volume"
    t.integer  "number"
    t.integer  "edition_number"
    t.string   "edition_label"
    t.date     "date"
    t.date     "date_printed"
    t.boolean  "present"
    t.text     "phys_description"
    t.integer  "num_sections"
    t.integer  "num_pages"
    t.text     "missing_pages"
    t.text     "duplicate_pages"
    t.text     "notes"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "microfilm_reels", :force => true do |t|
    t.date     "date_shipped_scan"
    t.string   "tracking_number"
    t.date     "date_tiffs_shipped_ucr"
    t.date     "date_film_returned"
    t.boolean  "shelved_at_ucb"
    t.date     "date_shipped_rescan"
    t.string   "rescan_tracking_number"
    t.date     "date_shipped_lc"
    t.string   "vendor_project_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reels", :force => true do |t|
    t.string   "number"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "reduction_ratio"
    t.string   "CaptureResolutionOriginal"
    t.string   "CaptureResolutionFilm"
    t.boolean  "GuideToContentsPresentFlag"
    t.string   "GuideToContentsString"
    t.date     "DateMicrofilmCreated"
    t.boolean  "LooseLeavesFlag"
    t.boolean  "BoundVolumeFlag"
    t.text     "Comments"
    t.string   "Dimensions"
    t.integer  "PagesPerIssue"
    t.integer  "NumberResolutionTargets"
    t.string   "ResolutionOfMaster"
    t.string   "ResolutionCommentMaster"
    t.string   "DensityReadingMaster"
    t.string   "AverageDensityMaster"
    t.string   "DminMaster"
    t.string   "ResolutionOfDuplicateNegative"
    t.string   "ResolutionCommentDuplicateNegative"
    t.string   "DensityReadingDuplicateNegative"
    t.string   "AverageDensityDuplicateNegative"
    t.string   "DminDuplicateNegative"
    t.string   "DigitalResponsibleInstitution"
    t.string   "DigitalResponsibleInstitutionCode"
    t.string   "SourceRepository"
    t.string   "SourceRepositoryCode"
    t.text     "NoteToProcessor"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.integer  "batch_id"
  end

  add_index "reels", ["batch_id"], :name => "index_reels_on_batch_id"

  create_table "title_reel_assignments", :force => true do |t|
    t.integer  "title_id"
    t.integer  "reel_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "title_reel_assignments", ["reel_id"], :name => "index_title_reel_assignments_on_reel_id"
  add_index "title_reel_assignments", ["title_id"], :name => "index_title_reel_assignments_on_title_id"

  create_table "titles", :force => true do |t|
    t.integer  "lccn"
    t.string   "title"
    t.string   "city_publication"
    t.string   "beg_date"
    t.string   "end_date"
    t.string   "issue_edition_pattern"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "abbrv_title_id"
  end

  add_index "titles", ["abbrv_title_id"], :name => "index_titles_on_abbrv_title_id"

end
