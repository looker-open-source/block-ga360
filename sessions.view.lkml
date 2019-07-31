# should just include a plain "ga_sessions" explore and view that extend "ga_sessions_config"
include: "//@{CONFIG_PROJECT_NAME}/sessions_config.view.lkml"

explore: ga_sessions {
  extends: [ga_sessions_config]
}

view: ga_sessions {
  extends: [ga_sessions_config]

  # BOTH the schema_name and ga360_table_name dimensions are here to avoid the "This constant doesn't exist" errors in the config project
  # see the the first sql_table_name: parameter in the sessions_config.view in the CONFIG project
  dimension: ga360_table_name {
    type: string
    sql:@{GA360_TABLE_NAME};;
  }

  dimension: schema_name {
    type: string
    sql:@{SCHEMA_NAME};;
  }
}
