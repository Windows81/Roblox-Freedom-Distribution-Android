package com.roblox.client.ae;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5642d;

    public String a() {
        return this.f5639a;
    }

    public String b() {
        return this.f5640b;
    }

    public String c() {
        return this.f5641c;
    }

    public String d() {
        return this.f5642d;
    }

    public c(String str) {
        k.b("rbx.baseurl", "Incoming base url: " + str);
        String strB = b(a(str));
        if (strB.startsWith("www.")) {
            this.f5639a = strB;
            this.f5641c = strB.substring(4);
        } else {
            this.f5639a = "www." + strB;
            this.f5641c = strB;
        }
        this.f5640b = this.f5639a + "/";
        this.f5642d = this.f5641c + "/";
    }

    private String a(String str) {
        return Pattern.compile("^http:/*|^https:/*", 2).matcher(str).replaceFirst("");
    }

    private String b(String str) {
        return str.replaceAll("/+$", "");
    }

    public String toString() {
        return "BaseUrl{url='" + this.f5639a + "'}";
    }
}
