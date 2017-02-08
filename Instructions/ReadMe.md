
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

**N.B** The version of the loki-master-model.instr being used was developed by Andrew Jackson of the ESS.
The ESS have a [bitbucket repository](https://bitbucket.org/essloki/loki-mcstas-master/src/fd621edb2c8c2119d58a3bb22b80e096311cb215?at=master) with regular revisions to the loki instrument. These files represent
a snapshot in this development with a few minor changes. 

## Modifying the instrument file

### Source

The source currently being used in the loki instrument file is the ESS butterfly moderator (Line 283). To
switch between this moderator and the basic ESS moderator, comment `//` Lines 283-287 and remove the
comments from Lines 289-296. The paramaters for these moderators can be found here:

* [ESS_butterfly](http://www.mcstas.org/download/components/sources/ESS_butterfly.html) 
* [ESS_moderator](http://www.mcstas.org/download/components/sources/ESS_moderator.html)

### Monitors

Lines 732-750 of the instrument file contains three simple 2x2m detectors which measure intensity, 
time-of-flight and wavelength respectively. The positions of these detectors are set to be ~1m along 
the beamline with respect to the sample using the mcstas `AT (x, y, z) RELATIVE SAMPLE` formalism, 
where z is along the beam direction. Once can easily modify this position by changing the `z` value.
The TOF detector is currently set to detect time of flight values between 0 - 0.1seconds (tmin and tmax).
The Lambda detector is set to detect wavelengths between l_min_source and l_max_source which are
calculated based on the instrument parameters lmin=3.0AA and lmax=9.7AA.