# iowkit-sys

Rust bindings for the Code Mercenaries iowkit library, a C-based programmatic interface for communicating with IOWarrior microcontroller boards over USB.

## Type of Bindings
These bindings were created using bindgen's feature to generate wrappers over top of the functionality that the libloading crate provides. This means that they're designed for loading the iowkit library at runtime; they are not suitable for linking to iowkit (statically or dynamically) at buildtime.

## License

<sup>
Licensed under <a href="LICENSE">MIT license</a>.
</sup>

<br>
