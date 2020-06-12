project_name: "block_ga360"

################ Constants ################

# Used in google_analytics_block.model connection param
constant: CONNECTION_NAME {
  value: "ga_generated"
  export: override_required
}



# Used in ga_sessions.view sql_table_name
constant: SCHEMA_NAME {
  value: "ga360_generated_2"
  export: override_required
}

constant: GA360_TABLE_NAME {
  value: "ga_sessions_*"
  export: override_required
}

constant: CONFIG_PROJECT_NAME {
  value: "block-ga360-config"
  export: override_required
}

################ Dependencies ################

remote_dependency: app-event-adapter {
  url: "git://github.com/looker/app-event-ga360-bigquery"
  # TODO: update ref value by going to github.com/looker/app-event-ga360-bigquery and finding the latest query
  ref: "10df28be3bc2bb4e0879c386abab711aec5a94ce"
}

remote_dependency: app-event-ga360 {
  url: "git://github.com/looker/app-event-ga360"
  # TODO: update ref value by going to github.com/looker/app-event-ga360 and finding the latest query
  ref: "266eebe57995cb65548ebafb93b9d19d151744d8"
}

remote_dependency: app-event {
  url: "git://github.com/looker/app-event"
  # TODO: update ref value by going to github.com/looker/app-event and finding the latest query
  ref: "0d98d962d749255ceff18e2ae7a64d040f129667"
}

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: SCHEMA_NAME {
    value: "@{SCHEMA_NAME}"
  }

  override_constant: GA360_TABLE_NAME {
    value: "@{GA360_TABLE_NAME}"
  }
}
