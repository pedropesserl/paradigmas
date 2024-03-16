public class Data {
    private int dia, mes, ano;
    public int getDia() {
        return this.dia;
    }
    public int getMes() {
        return this.mes;
    }
    public int getAno() {
        return this.ano;
    }
    public void setDia(int dia) {
        if (dia < 1 || dia > 31) {
            return;
        }
        if (this.mes == 2 && dia != 28) {
            return;
        }
        if ((this.mes == 4 || this.mes == 6 || this.mes == 9 || this.mes == 11)
                && dia > 30) {
            return;
        }
        this.dia = dia;
    }
    public void setMes(int mes) {
        if (mes < 1 || mes > 12) {
            return;
        }
        if (this.dia > 28 && mes == 2) {
            return;
        }
        if (this.dia > 30 && (mes == 4 || mes == 6 || mes == 9 || mes == 11)) {
            return;
        }
        this.mes = mes;
    }
    public void setAno(int ano) {
        this.ano = ano;
    }

    public boolean anterior(int d, int m, int a) {
        return a < this.ano ||
            (a == this.ano && m < this.mes ||
            (a == this.ano && m == this.mes && d < this.dia));
    }
    public boolean posterior(int d, int m, int a) {
        return a > this.ano ||
            (a == this.ano && m > this.mes ||
            (a == this.ano && m == this.mes && d > this.dia));
    }
    public boolean equals(int d, int m, int a) {
        return d == this.dia && m == this.mes && a == this.ano;
    }
    public String toString() {
        return this.dia + "/" + this.mes + "/" + this.ano;
    }
}
