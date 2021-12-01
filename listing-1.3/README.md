# Listing 1.3

- [ ] Playing with `data` section

```
aws ssm get-parameters --names /aws/service/canonical/meta/publisher-id
```
> return
```
{
    "Parameters": [
        {
            "Name": "/aws/service/canonical/meta/publisher-id",
            "Type": "String",
            "Value": "099720109477",
            "Version": 2,
            "LastModifiedDate": "2020-06-12T10:17:26.650000-04:00",
            "ARN": "arn:aws:ssm:ca-central-1::parameter/aws/service/canonical/meta/publisher-id",
            "DataType": "text"
        }
    ],
    "InvalidParameters": []
}
```

Identifier :id: = `prod-x7h6cigkuiul6`

```
aws ssm get-parameter --name /aws/service/marketplace/prod-x7h6cigkuiul6/latest
```
> Return
```
{
    "Parameter": {
        "Name": "/aws/service/marketplace/prod-x7h6cigkuiul6/latest",
        "Type": "String",
        "Value": "ami-0f646e92cffbc74c6",
        "Version": 7,
        "LastModifiedDate": "2021-11-29T22:25:15.656000-05:00",
        "ARN": "arn:aws:ssm:ca-central-1::parameter/aws/service/marketplace/prod-x7h6cigkuiul6/latest",
        "DataType": "text"
    }
}
```



# References

https://ubuntu.com/server/docs/cloud-images/amazon-ec2

