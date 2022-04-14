#!/usr/bin/bash
cargoToml="Cargo.toml"
sed -i '/^members/ s/.$//' ${cargoToml}

project_name=$1
insert_str=", \"${project_name}\"]"
sed -i "/^members/ s/$/${insert_str}/" ${cargoToml}

cargo new project_name 
