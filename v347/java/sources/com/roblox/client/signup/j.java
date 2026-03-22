package com.roblox.client.signup;

import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f7874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7875c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f7876d;
    public String e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<String> f7873a = new ArrayList<>();
    public long f = -1;

    public boolean a() {
        if (this.f7873a.isEmpty()) {
            return false;
        }
        String str = this.f7873a.get(0);
        return str != null && str.equals("OK");
    }
}
