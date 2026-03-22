package com.roblox.a;

import android.util.Log;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, a> f6353b = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: protected */
    public interface a {
        void a(com.roblox.a.a aVar);
    }

    public c(String str) {
        this.f6352a = str;
        a("supports", new b());
    }

    public String b() {
        return this.f6352a;
    }

    protected void a(String str, a aVar) {
        this.f6353b.put(str, aVar);
    }

    protected boolean a(String str) {
        return this.f6353b.containsKey(str);
    }

    public void a(com.roblox.a.a aVar) {
        String strB = aVar.b();
        a aVar2 = this.f6353b.get(strB);
        if (aVar2 != null) {
            aVar2.a(aVar);
        } else {
            Log.e("RBHybridModule", "Cannot find function " + strB + " in module " + this.f6352a);
            aVar.a(false, null);
        }
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
