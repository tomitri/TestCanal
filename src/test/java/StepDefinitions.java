public class StepDefinitions implements En {
 
    private Person personToTest = new Person();
 
    private PersonDAO personBDD;
 
    public StepDefinitions() {
 
        Given("^ Nouvelle Adresse $", () -> {
            personToTest.SetAdresse();
        });
 
        When("^j'enregistre la personne avec la nouvelle adresse $", () -> {
            personBDD.update(personToTest);
        });
 
    }
 
}
