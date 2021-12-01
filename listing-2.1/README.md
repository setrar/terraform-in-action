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



