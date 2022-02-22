import csv

class Element:
    def __init__(self, name, appearance, atomic_mass, boil, category, density, discovered_by, melt, molar_heat, number, period, phase, source, spectral_image, 
    summary, symbol, xpos, ypos, electronic_configuration, electronic_configuration_semantic, electron_affinity, electronegative_pauling, cpk_hex) :
        self.name = str(name)
        self.appearance = str(appearance)
        self.atomic_mass = str(atomic_mass)
        self.boil = str(boil)
        self.category = str(category)
        self.density = str(density)
        self.discovered_by = str(discovered_by)
        self.melt = str(melt)
        self.molar_heat = str(molar_heat)
        self.number = str(number)
        self.period = str(period)
        self.phase = str(phase)
        self.source = str(source)
        self.spectral_image = str(spectral_image)
        self.summary = str(summary)
        self.symbol = str(symbol)
        self.xpos = str(xpos)
        self.ypos = str(ypos)
        self.electronic_configuration = str(electronic_configuration)
        self.electronic_configuration_semantic = str(electronic_configuration_semantic)
        self.electron_affinity = str(electron_affinity)
        self.electronegativity_pauling = str(electronegative_pauling)
        self.cpk_hex = str(cpk_hex)


    def __repr__(self) -> str :
        return str((self.number,self.name,self.symbol))
    
    def to_dict(self) -> dict :
        return {
        'name':self.name,
        'appearance': self.appearance,
        'atomic_mass': self.atomic_mass,
        'boil': self.boil,
        'category': self.category,
        'density': self.density,
        'discovered_by': self.discovered_by,
        'melt': self.melt,
        'molar_heat': self.molar_heat,
        'number': self.number,
        'period': self.period,
        'phase': self.phase,
        'source': self.source,
        'spectral_image': self.spectral_image,
        'summary': self.summary,
        'symbol': self.symbol,
        'xpos': self.xpos,
        'ypos': self.ypos,
        'electronic_configuration': self.electronic_configuration,
        'electronic_configuration_semantic': self.electronic_configuration_semantic,
        'electron_affinity': self.electron_affinity,
        'electronegativity_pauling': self.electronegativity_pauling,
        'cpk_hex': self.cpk_hex
        }

def getElements():
    filename = "db.csv"
    fields = []
    rows = []

    with open(filename, 'r', encoding="utf8") as csvfile:
        csvreader = csv.reader(csvfile)
        fields = next(csvreader)

        for row in csvreader:
            rows.append(tuple(row))

    elements = []

    for el in rows:
        elements.append(Element(el[0],el[1],el[2],el[3],el[4],el[5],el[6],el[7],el[8],el[9],el[10],el[11],el[12],el[13],el[14],el[15],el[16],el[17],el[18],el[19],el[20],el[21],el[22]))
    
    return elements