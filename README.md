[![Build Status](https://travis-ci.org/rubyclerks/print_clerk.svg?branch=master)](https://travis-ci.org/rubyclerks/print_clerk)
[![Gem Version](https://badge.fury.io/rb/print_clerk.svg)](http://badge.fury.io/rb/print_clerk)
[![Code Climate](https://codeclimate.com/github/rubyclerks/print_clerk/badges/gpa.svg)](https://codeclimate.com/github/rubyclerks/print_clerk)
[![Test Coverage](https://codeclimate.com/github/rubyclerks/print_clerk/badges/coverage.svg)](https://codeclimate.com/github/rubyclerks/print_clerk)

SUMMARY
=======

This extension provides a "Print Invoice" button on the Orders view screen which opens a printable html page with the order details. Actually several types are supported and it is easy to add more or edit existing.

You have to set up your computer for printing, or PDF generation. Off course, if you cave a mac that is as easy as pressing the print + save as pdf buttons.

INSTALLATION
============

1. To install you need to add the following lines to your Gemfile (no external dependencies)

    gem 'print_clerk'

2. run bundler

    bundle

3. Configure your logo and footer text or more. It's easy as it's html.

4. Enjoy!


Configuration
==============

The templates are split into quite small chunks that you can just replace with your own.

Texts are stored in locale files

1. Set the logo path preference in locales/config.yml (root key config)

    invoice_logo_path: "company-logo.png"

    With the file existing in your asset path

2. Override any of the partial templates. they are address, footer, totals, header, thanks , and the items. Especially the thanks and footer templates are ones you will probably want to replace.

4. Disable any styles by changing the config.yml to suit

    print_styles: "receipt slip invoice reminder"

    For each style there will be a button on the order/show page ( you may add your own)

5. Go through the templates and see what you need to change.


TODO
=====

Tests are not very good on this one. Pull requests welcome :-)


Extra
=====

There is now a receipt template, for a normal receipt printer (ie 70mm). This works for us, but what about you?

Contributions welcome

Torsten
