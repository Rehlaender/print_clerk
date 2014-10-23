SUMMARY
=======

This extension provides a "Print Invoice" button on the Orders view screen which opens a printable html page with the order details.

You have to set up your computer for printing, or PDF generation. Off course, if you cave a mac that is as easy as pressing the print + save as pdf buttons.
 
INSTALLATION
============

1. To install you need to add the following lines to your Gemfile (no external dependencies)

    gem 'print_clerk' , :git => 'https://github.com/rubyclerks/print_clerk.git'

2. run bundler

    bundle

3. Configure your logo and footer text or more. It's easy as it's html.

4. Enjoy!


Configuration
==============

The templates are split into quite small chunks that you can just replace with your own.

Some texts are stored in locale files say print.yml

1. Set the logo path preference to include your store / company logo.

    print_invoice_logo_path: "company-logo.png"
    
    Somewhere in your asset path

2. Override any of the partial templates. they are address, footer, totals, header, thanks , and the items. The whole tanks is wrapped in a thanks hook, so replace or add at will.

4. Enable packaging slips, by setting 

  print_buttons: "invoice,slip"

  Use above feature for your own template if you want. For each button_name, define a subsection with header,   print, and thanks, in your locale.


Extra
=====

There is now a receipt template, for a normal receipt printer (ie 70mm). This works for us, but what about you?

Contributions welcome

Torsten