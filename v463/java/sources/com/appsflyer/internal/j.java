package com.appsflyer.internal;

import android.util.Base64;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class j {

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    public String f265;

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    public String f266;

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    public String f267;

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private byte[] f268;

    j() {
    }

    public j(String str, byte[] bArr, String str2) {
        this.f265 = str;
        this.f268 = bArr;
        this.f267 = str2;
    }

    j(char[] cArr) {
        Scanner scanner = new Scanner(new String(cArr));
        int i = 0;
        int i2 = 0;
        while (scanner.hasNextLine()) {
            String strNextLine = scanner.nextLine();
            if (strNextLine.startsWith("url=")) {
                this.f265 = strNextLine.substring(4).trim();
            } else if (strNextLine.startsWith("version=")) {
                this.f267 = strNextLine.substring(8).trim();
                Matcher matcher = Pattern.compile("^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$").matcher(this.f267);
                if (matcher.matches()) {
                    i = Integer.parseInt(matcher.group(1));
                    i2 = Integer.parseInt(matcher.group(2));
                }
            } else if (strNextLine.startsWith("data=")) {
                String strTrim = strNextLine.substring(5).trim();
                this.f268 = (i > 4 || i2 >= 11) ? Base64.decode(strTrim, 2) : strTrim.getBytes();
            }
        }
        scanner.close();
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    public final byte[] m181() {
        return this.f268;
    }
}
