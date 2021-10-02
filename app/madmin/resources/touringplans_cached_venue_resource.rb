class TouringplansCachedVenueResource < Madmin::Resource
  # Attributes
  attribute :id, form: false
  attribute :name
  attribute :fastpass_booth
  attribute :short_name
  attribute :open_emh_morning
  attribute :open_emh_evening
  attribute :single_rider
  attribute :time_zone
  attribute :seasonal
  attribute :open_very_merry
  attribute :open_not_so_scary
  attribute :category_code
  attribute :duration
  attribute :scheduled_code
  attribute :what_it_is
  attribute :scope_and_scale_code
  attribute :when_to_go
  attribute :average_wait_per_hundred
  attribute :average_wait_assumes
  attribute :loading_speed
  attribute :probable_wait_time
  attribute :special_needs
  attribute :height_restriction
  attribute :intense
  attribute :extinct_on
  attribute :opened_on
  attribute :frightening
  attribute :physical_considerations
  attribute :handheld_captioning
  attribute :video_captioning
  attribute :reflective_captioning
  attribute :assistive_listening
  attribute :audio_description
  attribute :wheelchair_transfer_code
  attribute :no_service_animals
  attribute :sign_language
  attribute :service_animal_check
  attribute :not_to_be_missed
  attribute :rider_swap
  attribute :ultimate_code
  attribute :ultimate_task
  attribute :park_entrance
  attribute :relative_open
  attribute :relative_close
  attribute :close_at_dusk
  attribute :fastpass_available
  attribute :crowd_calendar_version
  attribute :match_name
  attribute :crazy_threshold
  attribute :fastpass_only
  attribute :allow_showtimes_after_close
  attribute :disconnected_fastpass_booth
  attribute :crowd_calendar_group
  attribute :arrive_before
  attribute :arrive_before_fp
  attribute :opens_at_sunset
  attribute :closes_at_sunset
  attribute :permalink
  attribute :allow_time_restriction
  attribute :relative_open_to_sunset
  attribute :relative_close_to_sunset
  attribute :closing_round_code
  attribute :walking_time_proxy_id
  attribute :flexible_duration
  attribute :operator_id
  attribute :operator_type
  attribute :showtime_proxy_id
  attribute :hide_app
  attribute :created_at, form: false
  attribute :updated_at, form: false

  # Associations

  # Uncomment this to customize the display name of records in the admin area.
  # def self.display_name(record)
  #   record.name
  # end

  # Uncomment this to customize the default sort column and direction.
  # def self.default_sort_column
  #   "created_at"
  # end
  #
  # def self.default_sort_direction
  #   "desc"
  # end
end
