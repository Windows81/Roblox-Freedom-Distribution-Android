package com.roblox.client.locale;

import android.content.Context;
import com.roblox.client.locale.a;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.roblox.client.locale.a.a f7383a = new com.roblox.client.locale.a.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.roblox.client.locale.a f7384b = com.roblox.client.locale.a.a();

    public interface a {
        void a();
    }

    public interface b {
        void a(boolean z);
    }

    public void a(Context context, a aVar) {
        a(context, false, aVar);
    }

    public void a(final Context context, final boolean z, final a aVar) {
        this.f7383a.a(this.f7384b.d(), new d() { // from class: com.roblox.client.locale.f.1
            @Override // com.roblox.client.locale.d
            public void a(c cVar, c cVar2, c cVar3) {
                if (!z && !com.roblox.client.i.h.a().c()) {
                    if (cVar != null) {
                        com.roblox.client.util.g.b("rbx.locale", "persisting loginSignUpLocale locale: " + cVar);
                        f.this.f7384b.a(cVar, context);
                    } else {
                        cVar = f.this.f7384b.a(context);
                    }
                    f.this.f7384b.a(a.EnumC0115a.LOCALE_MODE_LOGIN_SIGN_UP);
                } else {
                    f.this.f7384b.a(a.EnumC0115a.LOCALE_MODE_GENERAL_EXPERIENCE);
                    cVar = cVar2;
                }
                f.this.f7384b.c(cVar3);
                f.this.f7384b.d(cVar2);
                f.this.f7384b.b(cVar, context);
                aVar.a();
            }
        });
    }

    public void a(final Context context, final b bVar) {
        this.f7383a.a(this.f7384b.d(), new d() { // from class: com.roblox.client.locale.f.2
            @Override // com.roblox.client.locale.d
            public void a(c cVar, c cVar2, c cVar3) {
                if (!com.roblox.client.i.h.a().c() && f.this.f7384b.f() != a.EnumC0115a.LOCALE_MODE_GENERAL_EXPERIENCE) {
                    cVar2 = cVar;
                }
                f.this.f7384b.c(cVar3);
                bVar.a(f.this.f7384b.b(cVar2, context));
            }
        });
    }
}
