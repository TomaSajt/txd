summon marker ~ ~ ~ {Tags: ["current", "txd_explosive_arrow_payload"]}
ride @e[tag=current,tag=txd_explosive_arrow_payload,limit=1] mount @s
tag @e[tag=current,tag=txd_explosive_arrow_payload] remove current
tag @s add txd_applied_payload