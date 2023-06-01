<?xml version="1.0" encoding="UTF-8"?>
<MetaResultFile version="20210114" creator="SolverPP secondary quantity evaluation">
  <MetaGeometryFile filename="model.gex" lod="1"/>
  <SimulationProperties fieldname="power (f=5800)" frequency="5800" encoded_unit="&amp;U:V^1.:A^1.:m^-2" quantity="powerflow" fieldtype="Powerflow" fieldscaling="TIME_AVERAGE" dB_Amplitude="10" excitation="3">
    <PrimaryResults>
      <PrimaryResult name="e-field (f=5800)_3,1_m3d.rex"/>
      <PrimaryResult name="h-field (f=5800)_3,1_m3d.rex"/>
    </PrimaryResults>
  </SimulationProperties>
  <ResultDataType vector="1" complex="0" timedomain="0" frequencymap="0"/>
  <SimulationDomain min="-24.9913521 -24.9913521 -12.7187529" max="24.9913521 24.9913521 13.7183523"/>
  <PlotSettings Plot="4" ignore_symmetry="0" deformation="0" enforce_culling="0" integer_values="0" default_arrow_type="ARROWS" default_scaling="NONE"/>
  <Source type="POSTPROCESSING"/>
  <SpecialMaterials>
    <Background type="FIELDFREE"/>
    <Material name="Copper (annealed)" type="FIELDFREE"/>
    <Material name="PEC" type="FIELDFREE"/>
    <Material name="air_0" type="FIELDFREE"/>
  </SpecialMaterials>
  <AuxGeometryFile/>
  <AuxResultFile/>
  <FieldFreeNodes/>
  <SurfaceFieldCoefficients/>
  <UnitCell/>
  <SubVolume/>
  <Units/>
  <ProjectUnits/>
  <TimeSampling/>
  <ResultGroups num_steps="1" transformation="1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1" process_mesh_group="0">
    <Frame index="0">
      <FieldResultFile filename="power (f=5800)_3.m3d" type="m3d"/>
    </Frame>
  </ResultGroups>
</MetaResultFile>
