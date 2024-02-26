import java.util.Scanner;

public class Aula1 {
    public static void main(String[] args) {
        int num;
        Scanner s = new Scanner(System.in);
        System.out.println("Digite um número");
        num = s.nextInt();
        System.out.println(num % 2 == 0 ? "Par" : "Ímpar");

        System.out.println("Digite números inteiros até -1");
        int soma = 0;
        while ((num = s.nextInt()) != -1) {
            soma += num;
        }
        System.out.println("Soma: " + soma);

        num = 0;
        for (int i = 0; i < 10; i++, num += 3) {
            System.out.println(num);
        }
    }
}
