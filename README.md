# Python with Makefile

This example show how easily you can use Makefile to build a Python project.

To run this example, you need to install [`make`](https://www.gnu.org/software/make/).

And then in your terminal:
```shell
# create a virtual environment
make venv

# activate
source .venv/bin/activate

# install dependencies
make install
```

Now you can run these commands:

```shell
# to run
make run

# to test
make test

# to check lint
make lint
```

And if you have any doubts, you can check the `help` command:
```shell
make help
```

---

Made by [Lucas Reis](https://github.com/llucasreis)