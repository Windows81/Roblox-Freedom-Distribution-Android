package com.roblox.client.util.a;

import android.content.Context;
import android.text.style.ClickableSpan;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class a extends ClickableSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f7914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Context f7915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7916c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7917d;
    private int e;

    public a(String str, Context context, String str2, int i, int i2) {
        this.f7915b = context;
        this.f7914a = str;
        this.f7916c = str2;
        this.f7917d = i;
        this.e = i2;
    }

    public String a() {
        return this.f7916c;
    }

    public int b() {
        return this.f7917d;
    }

    public int c() {
        return this.e;
    }
}
