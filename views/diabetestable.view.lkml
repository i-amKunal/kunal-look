# The name of this view in Looker is "Diabetestable"
view: diabetestable {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Diabetes.diabetes-table`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age" in Explore.

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_age {
    type: sum
    sql: ${age} ;;
  }

  measure: average_age {
    type: average
    sql: ${age} ;;
  }

  dimension: blood_pressure {
    type: number
    sql: ${TABLE}.BloodPressure ;;
  }

  dimension: bmi {
    type: number
    sql: ${TABLE}.BMI ;;
  }

  dimension: diabetes_pedigree_function {
    type: number
    sql: ${TABLE}.DiabetesPedigreeFunction ;;
  }

  dimension: glucose {
    type: number
    sql: ${TABLE}.Glucose ;;
  }

  dimension: insulin {
    type: number
    sql: ${TABLE}.Insulin ;;
  }

  dimension: outcome {
    type: number
    sql: ${TABLE}.Outcome ;;
  }

  dimension: pregnancies {
    type: number
    sql: ${TABLE}.Pregnancies ;;
  }

  dimension: skin_thickness {
    type: number
    sql: ${TABLE}.SkinThickness ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
