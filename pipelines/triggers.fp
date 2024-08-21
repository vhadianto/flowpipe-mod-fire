trigger "schedule" "fire_my_hourly_trigger" {
    schedule = "hourly"

    pipeline = pipeline.echo
}

trigger "schedule" "fire_my_daily_trigger" {
    schedule = "daily"

    pipeline = pipeline.echo
}

pipeline "echo" {
    description = "Echo pipeline in the fire mod"
    step "transform" "echo" {
        value = "Hello World"
    }
}