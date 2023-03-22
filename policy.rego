package main

default deny = false

deny {
    resource := input.resource_changes[_]
    resource.type == "local_file"
    resource.change.actions[_] == "create"
    contains(resource.change.after.content, "ba")
}
