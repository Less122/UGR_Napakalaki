package Napakalaki;

public class Treasure {
    
    private String name;
    private int bonus;
    private TreasureKind type;
    
    // Constructor
    public Treasure( String n, int bonus, TreasureKind t ){
        this.name = n;
        this.bonus = bonus;
        this.type = t;
    }
    
    // Metodos de acceso a datos
    public String getName() {
        return name;
    }
    public int getBonus() {
        return bonus;
    }
    public TreasureKind getType() {
        return type;
    }
    @Override
    public String toString() {
        return "(" + this.type + ")\t" + this.name  + ". +" + this.bonus;
    }
}

