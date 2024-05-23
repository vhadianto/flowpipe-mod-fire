pipeline "fire" {
    step "transform" "echo" {
        value = "Hello Fire"

        output "echo_1" {
            value = "Fire 1"
        }

        output "echo_2" {
            value = "Fire 2"
        }
    }

    step "transform" "echo3" {
        value = "Hello Fire 3"
    }    

    output "val" {
        value = step.transform.echo.value
    }
}

