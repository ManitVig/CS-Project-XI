class ChemicalElement {
  String name;
  String appearance;
  String atomic_mass;
  String boil;
  String category;
  String density;
  String discovered_by;
  String melt;
  String molar_heat;
  String number;
  String period;
  String phase;
  String source;
  String spectral_image;
  String summary;
  String symbol;
  String xpos;
  String ypos;
  String electronic_configuration;
  String electronic_configuration_semantic;
  String electron_affinity;
  String electronegativity_pauling;
  String cpk_hex;

  ChemicalElement(
      {required this.name,
      required this.appearance,
      required this.atomic_mass,
      required this.boil,
      required this.category,
      required this.density,
      required this.discovered_by,
      required this.melt,
      required this.molar_heat,
      required this.number,
      required this.period,
      required this.phase,
      required this.source,
      required this.spectral_image,
      required this.summary,
      required this.symbol,
      required this.xpos,
      required this.ypos,
      required this.electronic_configuration,
      required this.electronic_configuration_semantic,
      required this.electron_affinity,
      required this.electronegativity_pauling,
      required this.cpk_hex});

  ChemicalElement.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        appearance = json['appearance'],
        atomic_mass = json['atomic_mass'],
        boil = json['boil'],
        category = json['category'],
        density = json['density'],
        discovered_by = json['discovered_by'],
        melt = json['melt'],
        molar_heat = json['molar_heat'],
        number = json['number'],
        period = json['period'],
        phase = json['phase'],
        source = json['source'],
        spectral_image = json['spectral_image'],
        summary = json['summary'],
        symbol = json['symbol'],
        xpos = json['xpos'],
        ypos = json['ypos'],
        electronic_configuration = json['electronic_configuration'],
        electronic_configuration_semantic =
            json['electronic_configuration_semantic'],
        electron_affinity = json['electron_affinity'],
        electronegativity_pauling = json['electronegativity_pauling'],
        cpk_hex = json['cpk_hex'];
}
