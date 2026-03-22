package com.roblox.client.ae.a;

import android.content.Context;
import android.text.style.ClickableSpan;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a extends ClickableSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f5628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Context f5629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5632e;

    public a(String str, Context context, String str2, int i, int i2) {
        this.f5629b = context;
        this.f5628a = str;
        this.f5630c = str2;
        this.f5631d = i;
        this.f5632e = i2;
    }

    public String a() {
        return this.f5630c;
    }

    public int b() {
        return this.f5631d;
    }

    public int c() {
        return this.f5632e;
    }
}
