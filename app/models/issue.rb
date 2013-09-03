class Issue < ActiveRecord::Base
  attr_accessible :date, :date_printed, :duplicate_pages, :edition_label, :edition_number, :missing_pages, :notes, :num_pages, :num_sections, :number, :phys_description, :present, :volume
end
