connection: "@{CONNECTION_NAME}"
label: "Block GA360"

include: "//@{CONFIG_PROJECT_NAME}/sessions.view"
# include: "//@{CONFIG_PROJECT_NAME}/*.dashboard"

# View Includes
include: "//app-event-adapter/*.view"
include: "//app-event-ga360/*.view"
include: "sessions.view"

# Model Include
include: "//app-event/*.model"

# Dashboard Includes
include: "google_analytics_overview.dashboard"
include: "acquisition.dashboard"
include: "conversions.dashboard"
include: "event_analytics_dash_base.dashboard"
