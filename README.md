# bitrise-script-step-example

You can use this example in your workflow by adding the following to your bitrise.yml step section

```
      - git::https://github.com/DamienBitrise/bitrise-script-step-example.git@master:
        title: Bitrise Script Step Example
        inputs:
        - message: "Hello World!"
```

You can update what the script does in the step.sh file
