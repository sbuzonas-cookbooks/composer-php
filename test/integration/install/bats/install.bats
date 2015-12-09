#!/usr/bin/env bats

@test "composer is installed" {
  run [ -f /usr/local/bin/composer ]
  [ "$status" -eq 0 ]
}
