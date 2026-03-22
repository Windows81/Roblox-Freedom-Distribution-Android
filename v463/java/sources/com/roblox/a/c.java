package com.roblox.a;

import android.util.Log;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, a> f5525b = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: protected */
    public interface a {
        void a(com.roblox.a.a aVar);
    }

    public c(String str) {
        this.f5524a = str;
        a("supports", new b());
    }

    public String b() {
        return this.f5524a;
    }

    protected void a(String str, a aVar) {
        this.f5525b.put(str, aVar);
    }

    protected boolean a(String str) {
        return this.f5525b.containsKey(str);
    }

    public void a(com.roblox.a.a aVar) {
        String strB = aVar.b();
        a aVar2 = this.f5525b.get(strB);
        if (aVar2 != null) {
            aVar2.a(aVar);
            return;
        }
        Log.e("RBHybridModule", "Cannot find function " + strB + " in module " + this.f5524a);
        aVar.a(false, null);
    }

    private class b implements a {
        private b() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            aVar.a(c.this.a(aVar.c().optString("functionName", "")), null);
        }
    }
}
