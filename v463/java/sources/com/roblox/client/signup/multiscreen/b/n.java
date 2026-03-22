package com.roblox.client.signup.multiscreen.b;

import androidx.lifecycle.LiveData;
import com.roblox.client.signup.multiscreen.a.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class n extends i implements m {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.roblox.client.signup.multiscreen.c f7221e;
    private h f;
    private k g;
    private boolean h;
    private String i;

    @Override // com.roblox.client.signup.multiscreen.b.m
    public LiveData<com.roblox.client.signup.multiscreen.a.d> c() {
        return this;
    }

    public n(com.roblox.client.signup.multiscreen.c cVar, h hVar) {
        this.f7221e = cVar;
        this.f = hVar;
    }

    public void a(String str) {
        if (str == null) {
            this.h = false;
            this.i = null;
        } else {
            this.h = true;
            this.i = str;
        }
    }

    @Override // com.roblox.client.signup.multiscreen.b.m
    public String a() {
        return this.i;
    }

    @Override // com.roblox.client.signup.multiscreen.b.m
    public LiveData<com.roblox.client.signup.multiscreen.a.d> a(String str, String str2) {
        a((String) null);
        b(str, str2);
        return this;
    }

    @Override // com.roblox.client.signup.multiscreen.b.m
    public boolean b() {
        return this.h;
    }

    private void b(final String str, final String str2) {
        this.f7221e.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.n.1
            @Override // java.lang.Runnable
            public void run() {
                String str3;
                if (str2.isEmpty()) {
                    n.this.a(com.roblox.client.signup.multiscreen.a.d.b(str2, d.a.EMPTY_PASSWORD));
                    str3 = "Empty";
                } else if (str.equals(str2)) {
                    n.this.a(com.roblox.client.signup.multiscreen.a.d.b(str2, d.a.EQUAL_TO_USERNAME));
                    str3 = "IsUsername";
                } else if (str2.length() < 8) {
                    n.this.a(com.roblox.client.signup.multiscreen.a.d.b(str2, d.a.TOO_SHORT));
                    str3 = "TooShort";
                } else {
                    com.roblox.client.ae.k.c("PasswordValidator", "Start validation task.");
                    if (n.this.g != null) {
                        n.this.g.cancel(true);
                    }
                    n nVar = n.this;
                    nVar.g = nVar.c(str, str2);
                    n.this.g.execute(new Void[0]);
                    str3 = "";
                }
                if (str3.isEmpty()) {
                    return;
                }
                n.this.f.a(str3, true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k c(String str, String str2) {
        if (com.roblox.client.b.cd()) {
            return new l(str, str2, this.f, this);
        }
        return new j(str, str2, this.f, this);
    }
}
