# Derived Table of Event Names used for Filter Suggestions

view: event_list {
  derived_table: {
   # sql_trigger_value: SELECT EXTRACT(DATE FROM CURRENT_TIMESTAMP() AT TIME ZONE 'US/Pacific') ;;
    sql: SELECT
        event as event_types
      FROM SEGMENT.LAMBDASCHOOL_COM_ANALYTICS_JS.tracks
      GROUP BY 1
       ;;
  }

  dimension: event_types {
    type: string
    sql: ${TABLE}.event_types ;;
  }
}