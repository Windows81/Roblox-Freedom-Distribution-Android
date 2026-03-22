package com.roblox.client.signup.multiscreen.e;

import android.app.Activity;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import com.roblox.client.g.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.signup.multiscreen.a.a f7397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.client.g.a f7399c;

    public a(com.roblox.client.g.a aVar) {
        this.f7399c = aVar;
    }

    public void a(com.roblox.client.signup.multiscreen.a.a aVar) {
        this.f7397a = aVar;
    }

    public com.roblox.client.signup.multiscreen.a.a b() {
        return this.f7397a;
    }

    public boolean c() {
        com.roblox.client.signup.multiscreen.a.a aVar = this.f7397a;
        return aVar == null || com.roblox.client.ae.e.a(aVar.f7141c, this.f7397a.f7140b, this.f7397a.f7139a) < 13;
    }

    public void a(int i) {
        this.f7398b = i;
    }

    public boolean d() {
        return this.f7398b == 2 || c();
    }

    public void a(Activity activity, int i, String str, String str2, a.InterfaceC0146a interfaceC0146a) {
        this.f7399c.a(activity, i, new com.roblox.client.g.c(str, str2), interfaceC0146a);
    }

    public void a(boolean z) {
        if (z) {
            this.f7399c.a();
        } else {
            this.f7399c.b();
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.signup.multiscreen.e.a$a, reason: collision with other inner class name */
    public static class C0179a extends v.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.roblox.client.g.a f7400a;

        public C0179a(com.roblox.client.g.a aVar) {
            this.f7400a = aVar;
        }

        @Override // androidx.lifecycle.v.c, androidx.lifecycle.v.b
        public <T extends u> T a(Class<T> cls) {
            return new a(this.f7400a);
        }
    }
}
