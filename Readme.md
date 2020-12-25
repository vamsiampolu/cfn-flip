To build the `cfn-flip` docker image, use:

```bash
./build.sh
```

Note: The version has been set to `1.2.3` because that is the current version of the package. See https://pypi.org/search/?q=cfn-flip and update the version accordingly.

To transform a cloudformation template in the current directory to json using the docker image `cfn-flip:1.2.3`, use:

```bash
docker run -it --rm -v `pwd`:`pwd` -w `pwd` cfn-flip:1.2.3 my-file.yml
```
