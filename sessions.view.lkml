# should just include a plain "ga_sessions" explore and view that extend "ga_sessions_config"
include: "//@{CONFIG_PROJECT_NAME}/sessions_config.view.lkml"

explore: ga_sessions {
  extends: [ga_sessions_config]
}

view: ga_sessions {
  extends: [ga_sessions_config]
}
