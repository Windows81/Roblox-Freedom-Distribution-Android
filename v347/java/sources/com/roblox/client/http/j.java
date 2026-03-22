package com.roblox.client.http;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f7090a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f7092c;
    private String e = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f7091b = null;
    private byte[] f = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f7093d = 0;

    enum a {
        GET,
        POST
    }

    void a(ByteArrayOutputStream byteArrayOutputStream) {
        this.f = byteArrayOutputStream.toByteArray();
        try {
            this.e = new String(this.f, Constants.UTF8_NAME);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            this.e = "";
        }
    }

    public String a() {
        return this.e == null ? "" : this.e;
    }

    public void a(String str) {
        this.e = str;
    }

    public int b() {
        return this.f7092c;
    }

    public String c() {
        return this.f7091b;
    }

    public String toString() {
        return "HTTP Response for URL: " + this.f7091b + "\nRequest Type: " + this.f7090a + "\nResponse Body: " + this.e + "\nResponse Code: " + this.f7092c;
    }

    public long d() {
        return this.f7093d;
    }
}
