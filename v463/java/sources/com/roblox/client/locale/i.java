package com.roblox.client.locale;

import android.content.Context;
import com.roblox.client.locale.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.roblox.client.locale.b.a f6507a = new com.roblox.client.locale.b.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.roblox.client.locale.b f6508b = com.roblox.client.locale.b.a();

    public interface a {
        void a(boolean z);
    }

    public interface b {
        void a(boolean z);
    }

    public void a(Context context, a aVar) {
        a(context, false, aVar);
    }

    public void a(final Context context, final boolean z, final a aVar) {
        this.f6507a.a(this.f6508b.c(), new g() { // from class: com.roblox.client.locale.i.1
            @Override // com.roblox.client.locale.g
            public void a(f fVar, f fVar2, String str) {
                if (!z && !com.roblox.client.s.h.a().c()) {
                    if (fVar != null) {
                        com.roblox.client.ae.k.b("rbx.locale", "persisting loginSignUpLocale locale: " + fVar);
                        i.this.f6508b.a(fVar, context);
                    } else {
                        fVar = i.this.f6508b.a(context);
                    }
                    i.this.f6508b.a(b.a.LOCALE_MODE_LOGIN_SIGN_UP);
                } else {
                    i.this.f6508b.a(b.a.LOCALE_MODE_GENERAL_EXPERIENCE);
                    fVar = fVar2;
                }
                i.this.f6508b.a(context, str);
                i.this.f6508b.b(fVar2);
                aVar.a(i.this.f6508b.b(fVar, context));
            }
        });
    }

    public void a(final Context context, final b bVar) {
        this.f6507a.a(this.f6508b.c(), new g() { // from class: com.roblox.client.locale.i.2
            @Override // com.roblox.client.locale.g
            public void a(f fVar, f fVar2, String str) {
                if (com.roblox.client.s.h.a().c() || i.this.f6508b.d() == b.a.LOCALE_MODE_GENERAL_EXPERIENCE) {
                    fVar = fVar2;
                }
                i.this.f6508b.a(context, str);
                bVar.a(i.this.f6508b.b(fVar, context));
            }
        });
    }
}
