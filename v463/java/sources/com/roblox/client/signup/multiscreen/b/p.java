package com.roblox.client.signup.multiscreen.b;

import android.text.TextUtils;
import android.util.Patterns;
import androidx.lifecycle.LiveData;
import com.roblox.client.phonenumber.PhonePrefix;
import com.roblox.client.signup.multiscreen.a.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class p extends LiveData<com.roblox.client.signup.multiscreen.a.f> implements o {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.roblox.client.signup.multiscreen.c f7225e;
    private boolean f;
    private PhonePrefix g;
    private com.roblox.client.signup.multiscreen.a.e h;

    @Override // com.roblox.client.signup.multiscreen.b.o
    public LiveData<com.roblox.client.signup.multiscreen.a.f> a() {
        return this;
    }

    public p(com.roblox.client.signup.multiscreen.c cVar) {
        this.f7225e = cVar;
    }

    @Override // com.roblox.client.signup.multiscreen.b.o
    public LiveData<com.roblox.client.signup.multiscreen.a.f> a(final String str) {
        this.f = false;
        this.f7225e.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.p.1
            @Override // java.lang.Runnable
            public void run() {
                if (!TextUtils.isEmpty(str)) {
                    if (TextUtils.isEmpty(p.this.g.prefix)) {
                        p pVar = p.this;
                        pVar.a(com.roblox.client.signup.multiscreen.a.f.a(new com.roblox.client.signup.multiscreen.a.e(pVar.g, str), f.a.EMPTY_PREFIX));
                        return;
                    } else {
                        if (Patterns.PHONE.matcher(str).matches()) {
                            p.this.f = true;
                            p pVar2 = p.this;
                            pVar2.h = new com.roblox.client.signup.multiscreen.a.e(pVar2.g, str);
                            p pVar3 = p.this;
                            pVar3.a(com.roblox.client.signup.multiscreen.a.f.a(pVar3.h));
                            return;
                        }
                        p pVar4 = p.this;
                        pVar4.a(com.roblox.client.signup.multiscreen.a.f.a(pVar4.h, f.a.INVALID_PHONE_NUMBER));
                        return;
                    }
                }
                p pVar5 = p.this;
                pVar5.a(com.roblox.client.signup.multiscreen.a.f.a(new com.roblox.client.signup.multiscreen.a.e(pVar5.g, str), f.a.EMPTY_PHONE_NUMBER));
            }
        });
        return this;
    }

    @Override // com.roblox.client.signup.multiscreen.b.o
    public LiveData<com.roblox.client.signup.multiscreen.a.f> b(final String str) {
        this.f7225e.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.p.2
            @Override // java.lang.Runnable
            public void run() {
                com.roblox.client.signup.multiscreen.a.e eVarB = com.roblox.client.ae.n.b(str);
                if (p.this.g != null && p.this.g.prefix.equals(eVarB.d().prefix)) {
                    eVarB = new com.roblox.client.signup.multiscreen.a.e(p.this.g, eVarB.b());
                }
                com.roblox.client.ae.k.c("PhoneNumberValidator", "Parsed phoneNumber: " + eVarB.b());
                p.this.a(com.roblox.client.signup.multiscreen.a.f.a(eVarB, f.a.UPDATE_PHONE_NUMBER));
            }
        });
        return this;
    }

    @Override // com.roblox.client.signup.multiscreen.b.o
    public LiveData<com.roblox.client.signup.multiscreen.a.f> a(PhonePrefix phonePrefix) {
        com.roblox.client.ae.k.c("PhoneNumberValidator", phonePrefix.toString());
        this.g = phonePrefix;
        b(com.roblox.client.signup.multiscreen.a.f.a(new com.roblox.client.signup.multiscreen.a.e(phonePrefix, ""), f.a.SET_PHONE_PREFIX));
        return this;
    }

    @Override // com.roblox.client.signup.multiscreen.b.o
    public com.roblox.client.signup.multiscreen.a.e c() {
        return this.h;
    }

    @Override // com.roblox.client.signup.multiscreen.b.o
    public boolean b() {
        return this.f;
    }
}
