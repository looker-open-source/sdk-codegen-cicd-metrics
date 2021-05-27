view: releases {
  sql_table_name: `metrics.releases`
    ;;

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: draft {
    type: yesno
    sql: ${TABLE}.draft ;;
  }

  dimension: html_url {
    type: string
    sql: ${TABLE}.html_url ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: package_name {
    type: string
    sql: ${TABLE}.package_name ;;
  }

  dimension: prerelease {
    type: yesno
    sql: ${TABLE}.prerelease ;;
  }

  dimension_group: published {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.published_at ;;
  }

  dimension: tag_name {
    type: string
    sql: ${TABLE}.tag_name ;;
  }

  dimension: target_commitish {
    type: string
    sql: ${TABLE}.target_commitish ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [tag_name, name, package_name]
  }
}
