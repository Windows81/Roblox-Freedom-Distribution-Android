package com.appsflyer.a;

import java.util.Scanner;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2181d;

    public b(String str, String str2, String str3) {
        this.f2180c = str;
        this.f2179b = str2;
        this.f2178a = str3;
    }

    public b(char[] cArr) {
        Scanner scanner = new Scanner(new String(cArr));
        while (scanner.hasNextLine()) {
            String strNextLine = scanner.nextLine();
            if (strNextLine.startsWith("url=")) {
                this.f2180c = strNextLine.substring(4).trim();
            } else if (strNextLine.startsWith("version=")) {
                this.f2178a = strNextLine.substring(8).trim();
            } else if (strNextLine.startsWith("data=")) {
                this.f2179b = strNextLine.substring(5).trim();
            }
        }
        scanner.close();
    }

    public String a() {
        return this.f2178a;
    }

    public String b() {
        return this.f2179b;
    }

    public String c() {
        return this.f2180c;
    }

    public String d() {
        return this.f2181d;
    }

    public void a(String str) {
        this.f2181d = str;
    }
}
