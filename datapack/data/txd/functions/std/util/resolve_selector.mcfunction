execute as @s run data modify block 42077 305 29999986 Text1 set value '{"selector":"@e[tag=resolve_selector_target,limit=1]","insertion":"","clickEvent":{"action":"suggest_command","value":""},"hoverEvent":{"action":"show_text","contents":{"text":""}}}'
tag @e remove resolve_selector_target

# gets the substring of the original text starting from pos 135
# the result would be '"Username"}' however the sign fixes it so that it becomes '{"text":"Username"}'
data modify block 42077 305 29999986 Text1 set string block 42077 305 29999986 Text1 135
data modify storage txd:storage root.helper.resolve_selector.output set from block 42077 305 29999986 Text1

