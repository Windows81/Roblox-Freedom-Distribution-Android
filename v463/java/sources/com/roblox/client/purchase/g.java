package com.roblox.client.purchase;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g {
    public static String a(int i) {
        NumberFormat numberInstance = NumberFormat.getNumberInstance(Locale.US);
        DecimalFormat decimalFormat = (DecimalFormat) numberInstance;
        DecimalFormatSymbols decimalFormatSymbols = decimalFormat.getDecimalFormatSymbols();
        decimalFormatSymbols.setCurrencySymbol("");
        decimalFormat.setDecimalFormatSymbols(decimalFormatSymbols);
        numberInstance.setMaximumFractionDigits(0);
        return numberInstance.format(i);
    }
}
