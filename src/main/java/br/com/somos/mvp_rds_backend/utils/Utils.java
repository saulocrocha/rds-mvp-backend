package br.com.somos.mvp_rds_backend.utils;

public final class Utils {

    public static String removerCaracteresEspeciais(String texto) {
        return texto.replaceAll("[-+.^:,/]","");
    }

    public static String ultimoNome (String nome) {
        String[] names = nome.split("\\s+");
        if (names.length == 1) {
            return "";
        }
        return names[names.length -1];
    }

    public static String primeiroNome (String nome) {
        String[] names = nome.split("\\s+");
        return names[0];
    }

}