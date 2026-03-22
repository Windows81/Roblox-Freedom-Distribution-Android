package com.roblox.client.purchase;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e {
    public static String a(int i) {
        NumberFormat numberInstance = NumberFormat.getNumberInstance(Locale.US);
        DecimalFormatSymbols decimalFormatSymbols = ((DecimalFormat) numberInstance).getDecimalFormatSymbols();
        decimalFormatSymbols.setCurrencySymbol("");
        ((DecimalFormat) numberInstance).setDecimalFormatSymbols(decimalFormatSymbols);
        numberInstance.setMaximumFractionDigits(0);
        return numberInstance.format(i);
    }
}
