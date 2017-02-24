
## Instructions for Loading McStas Simulation

- Use the latest version of VirtualBox to launch the Ubuntu 16.04 virtual machine provided.
- The username and password are both `vagrant`.
- Launch a terminal window (CTRL/CMD+ALT+T)
- Launch McStas GUI Controls `mcgui &`
- In the MCGUI go to `File->Open instrument` and select `/home/vagrant/Desktop/LOKI/loki_master-model.instr`
- To view the contents of the instrument file select `Edit/New`.
- To run the simulation "as-is", just hit `Run` which launched the run dialog.
- Click `Start` and the simulation will commence.
- When the simulation is complete hit `Plot` to see the results.
- In order to close the graph window, users must press `Q` on the keyboard.

### Tracing

- Click `Run`in the mcgui and change the `Simulation`option to `Trace` and then click `Start`.
- A 2D instrument view (X-Z) will be displayed.
- To zoom into the instrument hit Z on the keyboard and use the mouse to select a region of interest. 
- Right-clicking resets to the previous zoom.
- Hit the space bar to trace individual neutron packets.

**N.B** The version of the loki-master-model.instr being used was developed by Andrew Jackson of the ESS. There have been a few minor modifications for outputting additional TOF and wavelength information.
The ESS have a [bitbucket repository](https://bitbucket.org/essloki/loki-mcstas-master/src/fd621edb2c8c2119d58a3bb22b80e096311cb215?at=master) with regular revisions to the loki instrument. These files represent
a snapshot in this development with a few minor changes. 

## Modifying the instrument file

### Components

A list of all components and their descriptions can be found [here](http://www.mcstas.org/download/components/). You can also download and view the source-code for each component.

### Source

The source currently being used in the loki instrument file is the ESS butterfly moderator (Line 283). To
switch between this moderator and the basic ESS moderator, comment `//` Lines 283-287 and remove the
comments from Lines 289-296. The paramaters for these moderators can be found here:

* [ESS_butterfly](http://www.mcstas.org/download/components/sources/ESS_butterfly.html) 
* [ESS_moderator](http://www.mcstas.org/download/components/sources/ESS_moderator.html)

### Sample

The sample (Line 670 of the instrument file), is an isotropic water sample. The full details of this type of component can be found [here](http://www.mcstas.org/download/components/samples/Isotropic_Sqw.html).

### Monitors

Lines 732-750 of the instrument file contains three simple 2x2m detectors which measure intensity, 
time-of-flight and wavelength respectively. The positions of these detectors are set to be ~1m along 
the beamline with respect to the sample using the mcstas `AT (x, y, z) RELATIVE SAMPLE` formalism, 
where z is along the beam direction. Once can easily modify this position by changing the `z` value.
The TOF detector is currently set to detect time of flight values between 0 - 0.1seconds (tmin and tmax).
The Lambda detector is set to detect wavelengths between l_min_source and l_max_source which are
calculated based on the instrument parameters lmin=3.0AA and lmax=9.7AA.


### MCSTAS Team

For further information contact the ESS Mcstas Team:

- Torben Nielsen/Peter Willendrup [DMSC Website](https://europeanspallationsource.se/data-management-and-software-centre)
- [Andrew Jackson](https://europeanspallationsource.se/page/andrew-jackson) original author of loki_master-model.instr
- [General McStas queries](http://www.mcstas.org/about/contacts/)