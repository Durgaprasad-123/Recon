# Recon
This script is used for domain enumeration and subdomain discovery. It uses tools like `assetfinder`, `subfinder`, and `httpx` to find and verify subdomains of a given domain or list of domains.

# Recon Tool Installation Script

This script checks for the installation of essential tools (`Go`, `subfinder`, `assetfinder`, and `httpx`) required for domain enumeration and subdomain discovery. If any of the tools are not installed, the script will attempt to install them using `go install`.

## Prerequisites

- Ensure `Go` is installed on your system. You can download and install it from [https://golang.org/dl/](https://golang.org/dl/).

## Usage

To install all the Prerequisites "apart from go", simply run it in your terminal:

```bash
./install_tools.sh
```

## Prerequisites

Ensure the following tools are installed and available in your system `PATH`:

- `assetfinder`
- `subfinder`
- `httpx`

## Usage

```bash
./recon.sh [OPTIONS]
or
bash recon.sh

      " `,      |' /
      /"/        |"" 
     """|        \"| 
     |"||        " "
     "" "        |"|\ 
    /""~\\.      /" ""~, 
   ""~""""\`"",~\`~"!!"!" \\ 
   /"""""/""! "~""" "" "~", 
  //\\""!!""~"!"!"\\"""/~!~, C~"~P
 // !!"""""! "~ " !!"!! "," O o"~ 
 ||   !!"!!~!!~||"  !     "" Y "" 
 \\     !  !  !            \`"U"' 
  \\ 
   \\  0))
    \`-~/~
     \`~' 
     			-- -- -- Prasad
```

### Options

- `-d <domain>`: Specify a single target domain (e.g., example.com).
- `-f <file>`: Specify a file containing a list of domains.
- `-o <dir>`: Specify the output directory to save results (default: `./results`).
- `-h`, `--help`: Show the help message.

## Examples

1. Enumerate subdomains for a single domain and save results in the default directory:

    ```bash
    ./recon.sh -d example.com
    ```

2. Enumerate subdomains for a list of domains from a file and save results in a specified directory:

    ```bash
    ./recon.sh -f domains.txt -o ./custom_results
    ```

## Output

The script creates a directory for each domain within the specified output directory. The following files are generated for each domain:

- `<domain>.assetfinder`: Subdomains found by `assetfinder`.
- `<domain>.subfinder`: Subdomains found by `subfinder`.
- `<domain>.resolved`: Merged and filtered subdomains from `assetfinder` and `subfinder`.
- `<domain>.httpx`: Live subdomains verified by `httpx`.
- `enumeration_log.txt`: Log file summarizing the results.

## Notes

- Ensure the required tools are installed and available in your system `PATH`.
- The script checks for the existence of the output directory and creates it if it does not exist.

## License

This project is licensed under the MIT License.
```

This `README.md` provides a comprehensive guide on how to use your script, its options, and examples. You can add this file to your repository.
