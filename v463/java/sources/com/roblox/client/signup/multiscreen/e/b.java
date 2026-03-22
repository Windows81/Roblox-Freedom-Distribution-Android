package com.roblox.client.signup.multiscreen.e;

import androidx.lifecycle.u;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.p;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7401a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7402b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7403c = -1;

    public com.roblox.client.signup.multiscreen.a.a b() {
        return new com.roblox.client.signup.multiscreen.a.a(this.f7401a, this.f7402b, this.f7403c);
    }

    public boolean c() {
        return (this.f7401a == -1 || this.f7402b == -1 || this.f7403c == -1) ? false : true;
    }

    public void a(int i) {
        this.f7401a = i;
        b("birthdayYear");
    }

    public void b(int i) {
        this.f7402b = i;
        b("birthdayMonth");
    }

    public void c(int i) {
        this.f7403c = i;
        b("birthdayDay");
    }

    public void a(String str, String str2, boolean z) {
        p.a("birthdayScreen", str, str2, z);
    }

    public void a(String str) {
        p.a("birthdayScreen", str);
    }

    public void d() {
        a("continue");
        com.roblox.client.s.f.b().a("Android-VAppSignup-ContinueClicked");
    }

    public void b(String str) {
        p.c("birthdayScreen", str, "submit");
    }

    public void e() {
        p.b("birthdayScreen");
        com.roblox.client.s.f.b().a("Android-VAppSignup-BirthdayScreenLoaded");
    }

    public void f() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new NameValuePair("isOver13", String.valueOf(com.roblox.client.ae.e.a(this.f7403c, this.f7402b, this.f7401a) > 13)));
        p.a("birthDateEntered", "birthdayScreen", arrayList);
    }
}
