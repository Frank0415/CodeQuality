# Clang-Tidy Configuration

Run `compile_commands.sh` to generate the `compile_commands.json` file required for Clang-Tidy analysis.

Then run the `run_tidy.sh` script to perform the analysis using `run_clang-tidy.py` to enable multithreaded execution.

`run_clang-tidy` only runs all the `.cpp` files in the `compile_commands.json`.