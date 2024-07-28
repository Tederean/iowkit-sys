#!/bin/bash

bindgen --ctypes-prefix raw --no-doc-comments --no-layout-tests --raw-line '#![allow(non_upper_case_globals)]' \
    --raw-line '#![allow(non_camel_case_types)]' --raw-line '#![allow(non_snake_case)]' \
    --raw-line '#![allow(dead_code)]'  --raw-line 'use std::os::raw;' --rustfmt-bindings \
    --dynamic-loading Iowkit -o bindings.rs iowkit.h

sed -i 's/extern "C"/extern "system"/g' bindings.rs

# final format after using sed on the bindings
rustfmt bindings.rs
