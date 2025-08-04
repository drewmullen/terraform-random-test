run "apply_basic" {
  command = apply

#   module {
#     source = ".."
#   }

    assert {
        condition = random_id.name.hex != ""
        error_message   = "Random ID should not be empty"
    }
}