# file2path

The `file2path` R package is a handy RStudio plugin that allows you to quickly paste the relative path of a file into your RStudio script, making it convenient to reference files within your current working directory.

Currently it is only available on macOS, contributions are welcome.

## Usage

Suppose your have file structure like this:

```bash
.
├── 01_input
│   └── data.csv
└── 02_script
    └── code.R
```

Currently, the working directory of R is set to `"~/projects/my_project/02_script"`, and you have a file named `"data.csv"` located in the directory `"01_input"`. Here's an example of how to use `file2path` to obtain the relative path:

1. Select and copy the file  `"data.csv"` in Finder.
2. Switch to RStudio.
3. Press the preset shotcut (or choose addin from dropdown menu) to paste the relative path.

The result will be `"../01_input/data.csv"`, which is the relative path of the file within the current working directory.

## Installation

To install the `file2path` package, you can use the `devtools` package to install it directly from GitHub. Open RStudio and run the following command:

```R
devtools::install_github("Yorks0n/file2path")
```

After installation, follow these steps to set up a shortcut for `file2path`:

1. In RStudio, click on "Tools" in the top menu.
2. From the dropdown menu, select "Addins" and then choose "Browse Addins...".
3. Click on the "Keyboard Shortcuts", find `Paste Relative Filepath` and enter the desired shortcut, such as `Cmd + B` for macOS.
4. Apply the setting.

## Contributing

Contributions to the `file2path` package are welcome! If you encounter any issues, have suggestions for improvements, or would like to contribute new features, please open an issue or submit a pull request on the [GitHub repository](https://github.com/Yorks0n/file2path).

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT). You are free to modify and distribute this package. However, please make sure to include appropriate attribution.

