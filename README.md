# file2path

The `file2path` R package is a handy RStudio plugin that allows you to quickly paste the relative path of a file into your RStudio script, making it convenient to reference files within your current working directory.

Currently it is only available on macOS, contributions are welcome.

## Installation

To install the `file2path` package, you can use the `devtools` package to install it directly from GitHub. Open RStudio and run the following command:

```R
devtools::install_github("your_username/file2path")
```

## Usage

1. After installing the package, select and copy the file name whose relative path you want to obtain.
2. Switch to your RStudio window.
3. Use the keyboard shortcut `Ctrl + Shift + V` (Windows/Linux) or `Cmd + Shift + V` (Mac) to paste the relative path of the file into your current RStudio location.

That's it! The relative path will be pasted into your script or console, ready for use.

## Example

Suppose your current working directory is set to `"~/projects/my_project/"`, and you have a file named `"data.csv"` located in the subdirectory `"data"`. Here's an example of how to use `file2path` to obtain the relative path:

1. Copy the file name `"data.csv"` to your clipboard.
2. Switch to RStudio.
3. Press `Ctrl + Shift + V` (Windows/Linux) or `Cmd + Shift + V` (Mac) to paste the relative path.

The result will be `"data/data.csv"`, which is the relative path of the file within the current working directory.

## Contributing

Contributions to the `file2path` package are welcome! If you encounter any issues, have suggestions for improvements, or would like to contribute new features, please open an issue or submit a pull request on the [GitHub repository](https://github.com/your_username/file2path).

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT). You are free to modify and distribute this package. However, please make sure to include appropriate attribution.

