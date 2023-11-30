# updatemillpassword

`updatemillpassword` is a utility script to update the wifi passwords for the Dimension Mill Members and Guests networks - since this has to be done once a month and is annoying.  It uses [`nmcli`]() to get and set information about connections and [`awk`](http://awklang.org/) to target the right connections.

## Usage

Pass one or two arguments.  

The first is the new password for the `Mill-MEMBERS` network.

The second is the new password for the `Mill-GUESTS` network.

If the number of arguments is 0, it will print instructions.  Arguments beyond the second are ignored.

## Process

Uses `nmcli` to update the passwords and then toggles the wifi off and back on (to force the system to renegotiate the connection with the new passwords).
