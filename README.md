# Second Life Haiku

The LSL script `SL-Haiku.lsl` is a Second Life haiku generator.

<table>
  <tr>
    <td align="center"><img src="./Haiku.jpg?raw=true" title="Second Life Haiku" width="444" height="525" /></td>
  </tr>
</table>

When the object in which the script is running is touched, a haiku is generated and sent to public chat.

The image used on the Second Life Haiku object is a painting by Kinkoku, Yokoi (1761-1832):
A portrait of the poet [Matsuo Bashō](https://en.wikipedia.org/wiki/Matsuo_Bashō), with his
most famous poem "An old pond - a frog jumps in -" (c.1686), from a collection of portraits
of Bashō and his disciples along with their respective haiku poems. Haikai Gunsen No Zu
('Portraits Of Haiku Poets'). The image is in the public domain.

Unlike it's predecessors, most of which have ceased to function, the Second Life haiku
generator does not rely on a web service provided by a PHP script. Random haikus are
generated solely by the LSL script without need for an HTTP request.

The Second Life Haiku Generator is extremely low lag: a single script in a single prim with no listen
channels, no polling, no HTTP requests, no mesh, just a touch event. In addition to the low lag
architectural design, the Second Life Haiku Generator has been optimized with `LSL-PyOptimizer`
to further reduce memory usage and improve performance.

The Second Life Haiku Generator can be deployed as:

- A rezzed object users can touch
  - Requires rez rights on land
- Worn as a HUD by the owner
  - No rez rights are required
  - Only the owner will be able to generate haikus

## Marketplace Product

The [Second Life Haiku Generator](https://marketplace.secondlife.com/p/Second-Life-Haiku-Generator/3225731)
is available on the Second Life Marketplace at
https://marketplace.secondlife.com/p/Second-Life-Haiku-Generator/3225731

The product includes both the rezzable object and the HUD.

## Usage

The Second Life Haiku Generator can be deployed as a rezzed object in-world
or as a HUD to be worn by the owner. Or both.

### Rezzable Object

- Purchase the Second Life Haiku Generator on the [Second Life Marketplace](https://marketplace.secondlife.com/p/Second-Life-Haiku-Generator/3225731)
- Rez the `Second Life Haiku (rez me)` object
  - You must have rez rights on the land
  - If you do not have rez rights, go to a Sandbox
  - Drag and drop the `Second Life Haiku (rez me)` object from your inventory onto the ground
- Position the Second Life Haiku object
  - Right click the rezzed Second Life Haiku object
  - Select `Edit`
  - Select `Move` in the Edit window
  - Use the arrows to move the Haiku Generator
  - Hold the `Ctrl` key down to rotate the Haiku Generator
  - Close the `Edit` window
- Click the rezzed Second Life Haiku object
  - A random haiku will be displayed in public chat
  - Click again for a new haiku

### Owner HUD

- Purchase the Second Life Haiku Generator on the [Second Life Marketplace](https://marketplace.secondlife.com/p/Second-Life-Haiku-Generator/3225731)
- Add the Second Life Haiku HUD
  - No rez rights required, can be used anywhere scripts are enabled
  - Double click the `Second Life Haiku HUD (add me)` object in your inventory
    - Or right click the object in your inventory and select `Add`
- Position the Second Life Haiku HUD if needed
  - Right click the worn `Second Life Haiku HUD (add me)` in your inventory
  - Select `Edit`
  - Select `Move` in the Edit window
  - Use the arrows to move the Second Life Haiku HUD on your screen
  - Close the `Edit` window
- Click the worn Second Life Haiku HUD
  - A random haiku will be displayed in public chat
  - Click again for a new haiku
- Right click the Second Life Haiku HUD and select `Detach` to detach the HUD

## License

The `SL-Haiku.lsl` script is licensed under the terms and conditions of the GNU Public License version 3 (GPLv3).
You may copy, modify, and redistribute this script under those terms. Any derivative work must also be
published under the terms of the GPLv3 or later license. That is, if you modify and distribure your own
version of this script then you must also make it available under this license.

See the [Second Life Haiku License](LICENSE) for a full description of the licensing terms and conditions.
