# Crafter Plugins Repository

This repository contains the built-in plugins provided by the Crafter team. These plugins are available by defaut in Crafter.

## Creating your own plugin

This following contains instructions for creating a plugin. The plugin will contain templates, two icons - toolbar-icon.png and node-icon.png, and a plugin-meta.yaml file.

# Prerequisites

* Node.js and NPM installed on your system
* Git installed on your system

# Creating a Plugin

* Clone this repository to your local system.
* Create a new folder in the repository and name it after your plugin.
* Inside the plugin folder, create a new folder called templates.
* Inside the templates folder, create files based on different use cases for your plugin.
* Add the two icons - toolbar-icon.png and node-icon.png to the plugin folder.
* Create a new file called plugin-meta.yaml in the plugin folder. This file will contain all the information about your plugin, such as the name, description, and version number.
* Fill out the plugin-meta.yaml file with your plugin information.
* Open your terminal and navigate to the plugin directory.
* Run the following command to install the necessary dependencies:
 ```
 npm install
 ```

* To publish the plugin, you can use the cpc command line tool. By default, cpc publish will publish the current directory. Alternatively, you can specify the path of the folder you want to publish by adding the --f flag followed by the path to the folder:
```
cpc publish -f path/to/the/folder
```
* If you need to specify a custom URL for the plugin service, you can add the following line to your system environment variables, or to your shell script:
```
export CRAFTER_API_URL=http://example.com
```
>Replace the URL with the one you need to use. This variable will be used by the cpc command line tool when communicating with the plugin service.

Congratulations! Your plugin is now published.
