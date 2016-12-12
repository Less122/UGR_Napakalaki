package Napakalaki;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public class CardDealer {
    // SINGLETON
    private static final CardDealer instance = new CardDealer();
    private ArrayList<Monster> usedMonsters = new ArrayList();
    private ArrayList<Monster> unusedMonsters = new ArrayList();
    private ArrayList<Treasure> usedTreasures = new ArrayList();
    private ArrayList<Treasure> unusedTreasures = new ArrayList();
    
    // Constructor
    private CardDealer() {
        initTreasureCardDeck();
        shuffleTreasures();
        initMonsterCardDeck();
        shuffleMonsters();
    }
    
    // Metodos
    private void initTreasureCardDeck() {
                // 1º TESORO - ¡SÍ MI AMO!
        Treasure tesoro = new Treasure("¡Sí mi amo!", 4, TreasureKind.HELMET);
        unusedTreasures.add(tesoro);
        
        // 2º TESORO - BOTAS DE INVESTIGACIÓN
        tesoro = new Treasure("Botas de investigación", 3, TreasureKind.SHOES);
        unusedTreasures.add(tesoro);
        
        // 3º TESORO - CAPUCHA DE CTHULHU
        tesoro = new Treasure("Capucha de Cthulhu", 3, TreasureKind.HELMET);
        unusedTreasures.add(tesoro);
        
        // 4º TESORO - A PRUEBA DE BALAS
        tesoro = new Treasure("A prueba de balas", 2, TreasureKind.ARMOR);
        unusedTreasures.add(tesoro);
        
        // 5º TESORO - BOTAS DE LLUVIA ÁCIDA
        tesoro = new Treasure("Botas de lluvia ácida", 1, TreasureKind.BOTHHANDS);
        unusedTreasures.add(tesoro);
        
        // 6º TESORO - CASCO MINERO
        tesoro = new Treasure("Casco minero", 2, TreasureKind.HELMET);
        unusedTreasures.add(tesoro);
        
        // 7º TESORO - AMETRALLADORA ACME
        tesoro = new Treasure("Ametralladora ACME", 4, TreasureKind.BOTHHANDS);
        unusedTreasures.add(tesoro);
        
        // 8º TESORO - CAMISETA DE LA ETSIIT
        tesoro = new Treasure("Camiseta de la ETSIIT", 1, TreasureKind.ARMOR);
        unusedTreasures.add(tesoro);
        
        // 9º TESORO - CLAVO DE RAIL FERROVIARIO
        tesoro = new Treasure("Clavo de rail ferroviario", 3, TreasureKind.ONEHAND);
        unusedTreasures.add(tesoro);
        
        // 10º TESORO - CUCHILLO DE SUSHI ARCANO
        tesoro = new Treasure("Cuchillo de sushi arcano", 2, TreasureKind.ONEHAND);
        unusedTreasures.add(tesoro);
        
        // 11º TESORO - FEZ ALÓPODO
        tesoro = new Treasure("Fez alópodo", 3, TreasureKind.HELMET);
        unusedTreasures.add(tesoro);
        
        // 12º TESORO - HACHA PREHISTÓRICA
        tesoro = new Treasure("Hacha prehistórica", 2, TreasureKind.ONEHAND);
        unusedTreasures.add(tesoro);
        
        // 13º TESORO - EL APARATO DE PR. TESLA
        tesoro = new Treasure("El aparato del Pr. Tesla", 4, TreasureKind.ARMOR);
        unusedTreasures.add(tesoro);
        
        // 14º TESORO - GAITA
        tesoro = new Treasure("Gaita", 4, TreasureKind.BOTHHANDS);
        unusedTreasures.add(tesoro);
        
        // 15º TESORO - INSECTICIDA
        tesoro = new Treasure("Insecticida", 2, TreasureKind.ONEHAND);
        unusedTreasures.add(tesoro);
        
        // 16º TESORO - ESCOPETA DE 3 CAÑONES
        tesoro = new Treasure("Escopeta de 3 cañones", 4, TreasureKind.BOTHHANDS);
        unusedTreasures.add(tesoro);
        
        // 17º TESORO - GARABATO MÍSTICO
        tesoro = new Treasure("Garabato místico", 2, TreasureKind.ONEHAND);
        unusedTreasures.add(tesoro);
        
        // 18º TESORO - LA REBECA METÁLICA
        tesoro = new Treasure("La rebeca metálica", 2, TreasureKind.ARMOR);
        unusedTreasures.add(tesoro);
        
        // 19º TESORO - LANZALLAMAS
        tesoro = new Treasure("Lanzallamas", 4, TreasureKind.BOTHHANDS);
        unusedTreasures.add(tesoro);
        
        // 20º TESORO - NECRO-COMICÓN
        tesoro = new Treasure("Necro-comicón", 1, TreasureKind.ONEHAND);
        unusedTreasures.add(tesoro);
        
        // 21º TESORO - NECRONOMICÓN
        tesoro = new Treasure("Necronomicón", 5, TreasureKind.BOTHHANDS);
        unusedTreasures.add(tesoro);
        
        // 22º TESORO - LINTERNA A 2 MANOS
        tesoro = new Treasure("Linterna a 2 manos", 3, TreasureKind.BOTHHANDS);
        unusedTreasures.add(tesoro);
        
        // 23º TESORO - NECRO-GNOMICÓN
        tesoro = new Treasure("Necro-gnomicón", 2, TreasureKind.ONEHAND);
        unusedTreasures.add(tesoro);
        
        // 24º TESORO - NECROTELECOM
        tesoro = new Treasure("Necrotelecom", 2, TreasureKind.HELMET);
        unusedTreasures.add(tesoro);
        
        // 25º TESORO - MAZO DE LOS ANTIGUOS
        tesoro = new Treasure("Mazo de los antiguos", 3, TreasureKind.ONEHAND);
        unusedTreasures.add(tesoro);
        
        // 26º TESORO - NECRO-PLAYBOYCÓN
        tesoro = new Treasure("Necro-playboycón", 3, TreasureKind.ONEHAND);
        unusedTreasures.add(tesoro);
        
        // 27º TESORO - PORRA PRETERNATURAL
        tesoro = new Treasure("Porra preternatural", 2, TreasureKind.ONEHAND);
        unusedTreasures.add(tesoro);
        
        // 28º TESORO - SHOGULADOR
        tesoro = new Treasure("Shogulador", 1, TreasureKind.BOTHHANDS);
        unusedTreasures.add(tesoro);
        
        // 29º TESORO - VARITA DE ATIZAMIENTO
        tesoro = new Treasure("Varita de atizamiento", 3, TreasureKind.ONEHAND);
        unusedTreasures.add(tesoro);
        
        // 30º TESORO - TENTÁCULO DE PEGA
        tesoro = new Treasure("Tentáculo de pega", 2, TreasureKind.HELMET);
        unusedTreasures.add(tesoro);
        
        // 31º TESORO - ZAPATO DEJA-AMIGOS
        tesoro = new Treasure("Zapato deja-amigos", 1, TreasureKind.SHOES);
        unusedTreasures.add(tesoro);
    }
    
    private void initMonsterCardDeck() {
        // 1º MONSTRUO - 3 BYAKHEES DE BONANZA
        BadConsequence badCon = new BadConsequence("Pierdes tu armadura visible y otra oculta", 0,
                                                   new ArrayList(Arrays.asList(TreasureKind.ARMOR)),
                                                   new ArrayList(Arrays.asList(TreasureKind.ARMOR)));
        Prize prize = new Prize(2, 1); 
        unusedMonsters.add(new Monster("3 Byakhees de bonanza", 8, badCon, prize));
        
        // 2º MONSTRUO - TENOCHTILAN
        badCon = new BadConsequence("Embobados con el lindo primigenio te descartas de tu casco visible", 0,
                                    new ArrayList(Arrays.asList(TreasureKind.HELMET)),
                                    new ArrayList());
        prize = new Prize(1, 1);
        unusedMonsters.add(new Monster("Tenochtitlan" , 2, badCon, prize));
        
        // 3º MONSTRUO - EL SOPOR DE DUNWICH
        badCon = new BadConsequence("El primordial bostezo contagioso. Pierdes tu calzado visible", 0,
                                    new ArrayList(Arrays.asList(TreasureKind.SHOES)),
                                    new ArrayList());
        prize = new Prize(1, 1);
        unusedMonsters.add(new Monster("El sopor de Dunwich", 2, badCon, prize));

        // 4º MONSTRUO - DEMONIOS DE MAGALUF
        badCon = new BadConsequence("Te atrapan para llevarte de fiesta y te dejan caer a mitad del vuelo. Descarta una mano visible y otra oculta", 0,
                                    new ArrayList(Arrays.asList(TreasureKind.ONEHAND)),
                                    new ArrayList(Arrays.asList(TreasureKind.ONEHAND)));
        prize = new Prize(4, 1);
        unusedMonsters.add(new Monster("Demonios de Magaluf", 2, badCon, prize));
       
        // 5º MONSTRUO - EL GORRÓN EN EL UMBRAL
        badCon = new BadConsequence("Pierdes todos tus tesoros visibles", 0, BadConsequence.MAXTREASURES, 0);
        prize = new Prize(3, 1);
        unusedMonsters.add(new Monster("El gorrón en el umbral", 13, badCon, prize));
        
        // 6º MONSTRUO - H.P. MUNCHCRAFT
        badCon = new BadConsequence("Pierdes la armadura visible", 0, 
                                    new ArrayList(Arrays.asList(TreasureKind.ARMOR)),
                                    new ArrayList());
        prize = new Prize(2, 1);
        unusedMonsters.add(new Monster("H.P. Munchcraft", 6, badCon, prize));
        
        // 7º MONSTRUO - NECRÓFAGO
        badCon = new BadConsequence("Sientes bichos bajo la ropa. Descarta la armadura visible",
                                    0, new ArrayList(Arrays.asList(TreasureKind.ARMOR)),
                                    new ArrayList());
        prize = new Prize(1, 1);
        unusedMonsters.add(new Monster("Necrófago", 13, badCon, prize));
        
        // 8º MONSTRUO - EL REY DE ROSADO
        badCon = new BadConsequence("Pierdes 5 niveles y 3 tesoros visibles", 5, 3, 0);
        prize = new Prize(3, 2);
        unusedMonsters.add(new Monster("El rey de rosado", 11, badCon, prize));
        
        // 9º MONSTRUO - FLECHER
        badCon = new BadConsequence("Toses los pulmones y pierdes 2 niveles.", 2, 0, 0);
        prize = new Prize(1, 1);
        unusedMonsters.add(new Monster("Flecher", 2, badCon, prize));

        // 10º MONSTRUO - LOS HONDOS
        badCon = new BadConsequence("Estos monstruos resultan bastante superficiales y te aburren mortalmente. Estas muerto", true);
        prize = new Prize(2, 1);
        unusedMonsters.add(new Monster("Los hondos", 8, badCon, prize));

        // 11º MONSTRUO - SEMILLAS CTHULHU
        badCon = new BadConsequence("Pierdes 2 niveles y 2 tesoros ocultos", 2, 0, 2);
        prize = new Prize(2, 1);
        unusedMonsters.add(new Monster("Semillas Cthulhu", 4, badCon, prize));

        // 12º MONSTRUO - DAMEARGO
        badCon = new BadConsequence("Te intentas escaquear. Pierdes una mano visible.", 0, 
                                    new ArrayList(Arrays.asList(TreasureKind.ONEHAND)), 
                                    new ArrayList());
        prize = new Prize(2, 1);
        unusedMonsters.add(new Monster("Dameargo", 1, badCon, prize));
        
        // 13º MONSTRUO - POLLIPÓLIPO VOLANTE
        badCon = new BadConsequence("Da mucho asquito. Pierdes 3 niveles", 3, 0, 0);
        prize = new Prize (2, 1);
        unusedMonsters.add(new Monster ("Pollipólipo volante", 3, badCon, prize));

        // 14º MONSTRUO - YSKHTIHYSSG-GOTH
        badCon = new BadConsequence("No le hace gracia que pronuncien mal su nombre. Estas muerto", true);
        prize = new Prize (3, 1);
        unusedMonsters.add(new Monster ("Yskhtihyssg-Goth", 14, badCon, prize));

        // 15º MONSTRUO - FAMILIA FELIZ
        badCon = new BadConsequence("La familia te atrapa. Estas muerto", true);
        prize = new Prize (3, 1);
        unusedMonsters.add(new Monster ("Familia Feliz", 1, badCon, prize));

        // 16º MONSTRUO - ROBOGGOTH
        badCon = new BadConsequence("La quinta directiva primaria te obliga a perder 2 niveles y un tesoro 2manos visible", 
                                    2, new ArrayList(Arrays.asList(TreasureKind.BOTHHANDS)),
                                    new ArrayList());
        prize = new Prize (2, 1);
        unusedMonsters.add(new Monster ("Roboggoth", 8, badCon, prize));
        
        // 17º MONSTRUO - EL ESPÍA SORDO
        badCon = new BadConsequence("Te asusta en la noche. Pierdes un casco visible", 0,
                                    new ArrayList(Arrays.asList(TreasureKind.HELMET)),
                                    new ArrayList());
        prize = new Prize(1, 1);
        unusedMonsters.add(new Monster("El espía sordo", 5, badCon, prize));
        
        // 18º MONSTRUO - TONGUE
        badCon = new BadConsequence("Menudo susto te llevas. Pierdes 2 niveles y 5 tesoros visibles.", 2, 5, 0);
        prize = new Prize (2, 1);
        unusedMonsters.add(new Monster("Tongue", 19, badCon, prize));
        
        // 19º MONSTRUO - BICÉFALO
        badCon = new BadConsequence("No hay manos para tantas cabezas. Pierdes 3 niveles y todos los tesoros visibles de tus manos", 3,
                                    new ArrayList(Arrays.asList(TreasureKind.ONEHAND, TreasureKind.ONEHAND, TreasureKind.BOTHHANDS)),
                                    new ArrayList(Arrays.asList()));
        prize = new Prize(2, 1);
        unusedMonsters.add(new Monster("Bicéfalo", 21, badCon, prize));
    }
    
    private void shuffleTreasures(){
        Collections.shuffle(unusedTreasures);
    }
    
    private void shuffleMonsters(){
        Collections.shuffle(unusedMonsters);
    }
    
    public static CardDealer getInstance(){
        return instance;
    }
    
    public Treasure nextTreasure(){
        Treasure local_treasure = null;
        if(!unusedTreasures.isEmpty()){
           local_treasure = unusedTreasures.get(0);
            usedTreasures.add(local_treasure);
            unusedTreasures.remove(0);
        }
        else{
            unusedTreasures = usedTreasures;
            this.shuffleTreasures();
            usedTreasures.clear();
        }
        return local_treasure;
    }
    
    public Monster nextMonster(){
        Monster local_monster = null;
        if(!unusedMonsters.isEmpty()){
            local_monster = unusedMonsters.get(0);
            usedMonsters.add(local_monster);
            unusedMonsters.remove(0);
        }
        else{
            unusedMonsters = usedMonsters;
            this.shuffleMonsters();
            usedMonsters.clear();
        }
    return local_monster;
    }
    
    public void giveTreasureBack(Treasure t){
        usedTreasures.add(t);
    }
    
    public void giveMonsterBack(Monster m){
        usedMonsters.add(m);
    }
    
    public void initCards() {
        this.initTreasureCardDeck();
        this.initMonsterCardDeck();
    }
}
