package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ary extends arv {
    ary() {
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i = 0;
        int length = str.length();
        while (i < str.length() && str.charAt(i) == ',') {
            i++;
        }
        while (length > 0 && str.charAt(length - 1) == ',') {
            length--;
        }
        if (length < i) {
            return null;
        }
        return (i == 0 && length == str.length()) ? str : str.substring(i, length);
    }

    @Override // com.google.android.gms.internal.ads.arv
    public final String a(String str, String str2) {
        String strA = a(str);
        String strA2 = a(str2);
        return TextUtils.isEmpty(strA) ? strA2 : TextUtils.isEmpty(strA2) ? strA : new StringBuilder(String.valueOf(strA).length() + 1 + String.valueOf(strA2).length()).append(strA).append(",").append(strA2).toString();
    }
}
