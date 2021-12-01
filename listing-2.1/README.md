# Local File

- [ ] Enable Trace

```
export TF_LOG=trace
```

- [ ] Disable Trace

```
unset TF_LOG
```

:a: Plan

- [ ] Save the plan

```
terraform plan -out plan.save
```

- [ ] Run the saved plan

```
terraform apply "plan.save"
```

- [ ] Run in [parallel](https://www.terraform.io/docs/cli/commands/apply.html#parallelism-n)

* Default 10

```
terraform plan -parallelism=8 
```

 - [ ] Run the `dependency` graph

```
terraform graph
```
> Return
```
digraph {
	compound = "true"
	newrank = "true"
	subgraph "root" {
		"[root] local_file.literature (expand)" [label = "local_file.literature", shape = "box"]
		"[root] provider[\"registry.terraform.io/hashicorp/local\"]" [label = "provider[\"registry.terraform.io/hashicorp/local\"]", shape = "diamond"]
		"[root] local_file.literature (expand)" -> "[root] provider[\"registry.terraform.io/hashicorp/local\"]"
		"[root] meta.count-boundary (EachMode fixup)" -> "[root] local_file.literature (expand)"
		"[root] provider[\"registry.terraform.io/hashicorp/local\"] (close)" -> "[root] local_file.literature (expand)"
		"[root] root" -> "[root] meta.count-boundary (EachMode fixup)"
		"[root] root" -> "[root] provider[\"registry.terraform.io/hashicorp/local\"] (close)"
	}
}
```

