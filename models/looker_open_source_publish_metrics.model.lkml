connection: "cloud-looker-sdk-codegen-cicd"

# include all the views
include: "/views/**/*.view"

datagroup: looker_open_source_publish_metrics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_open_source_publish_metrics_default_datagroup

explore: releases {}
