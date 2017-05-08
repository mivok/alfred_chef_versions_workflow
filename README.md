# Chef server versions workflow

Grabs the version number for the latest version of a chef product and copies
it to the clipboard. It uses the `mixlib-install list-versions` command from
chefdk to grab the version, and lets you specify the stable, current or
unstable channel.

## Prerequisites

You need chefdk installed for the workflow to work.

## Installation

Download and open [Chef versions.alfredworkflow](https://github.com/mivok/alfred_chef_versions_workflow/raw/master/Chef%20versions.alfredworkflow).
No further configuration is required.

## Usage

Type `chef-versions PRODUCT CHANNEL` and press enter. The available chef
products and channels will be autocompleted for you.
