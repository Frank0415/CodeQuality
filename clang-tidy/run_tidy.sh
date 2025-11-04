./run_clang-tidy.py -checks="-*,clang-analyzer-*,bugprone-*,cppcoreguidelines-*,misc-*,modernize-*,-modernize-use-trailing-return-type,performance-*,portability-*,readability-*,google-*,-google-objc-function-naming" -warnings-as-errors='*' -extra-arg-before=-std=c++20 -extra-arg-before=-x -extra-arg-before=c++ -header-filter=.* > clang_tidy.txt

# Remove everything before "Running clang-tidy" line
sed -i '/^Running clang-tidy/,$!d' clang_tidy.txt

echo "Clang-tidy complete."