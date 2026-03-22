package com.roblox.client.signup;

import com.appsflyer.internal.referrer.Payload;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f7132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f7133c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7134d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f7135e;
    public String f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<String> f7131a = new ArrayList<>();
    public long g = -1;
    public long h = -1;

    public boolean a() {
        String str;
        return (this.f7131a.isEmpty() || (str = this.f7131a.get(0)) == null || !str.equals(Payload.RESPONSE_OK)) ? false : true;
    }
}
