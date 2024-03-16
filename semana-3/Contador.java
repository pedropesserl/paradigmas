public class Contador {
    long contador;
    public long getContador() {
        return this.contador;
    }
    public void setContador(long c) {
        if (c >= 0) {
            this.contador = c;
        }
    }

    public void zeraContador() {
        this.contador = 0;
    }
    public void incrementaContador() {
        this.contador++;
    }
    public void decrementaContador() {
        if (this.contador > 0) {
            this.contador--;
        }
    }
}
