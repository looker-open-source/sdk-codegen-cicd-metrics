connection: "cloud-looker-sdk-codegen-cicd"

# include all the views
include: "/views/**/*.view"

datagroup: sdk_codegen_cicd_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sdk_codegen_cicd_default_datagroup

explore: releases {}
