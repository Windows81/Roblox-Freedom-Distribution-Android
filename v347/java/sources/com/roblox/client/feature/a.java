package com.roblox.client.feature;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.roblox.client.h.j;

/* JADX INFO: loaded from: classes.dex */
public class a extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f6941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6942d;

    public a(c cVar, String str, int i) {
        super(str);
        this.f6939a = -1;
        this.f6940b = -1;
        this.f6941c = cVar;
        this.f6942d = i;
    }

    private void a(boolean z, boolean z2) {
        a(-1L, -1L, z, z2);
    }

    private void a(long j, long j2, boolean z, boolean z2) {
        com.roblox.client.chat.a.d dVarC;
        if (!z2) {
            com.roblox.client.i.g.a().a(new com.roblox.client.h.c());
        }
        if (!z) {
            Fragment fragmentB = this.f6941c.b("DISABLED_FRAGMENT");
            if (fragmentB == null) {
                fragmentB = new com.roblox.client.chat.i();
            }
            this.f6941c.a(this.f6942d, fragmentB, "DISABLED_FRAGMENT");
            return;
        }
        com.roblox.client.chat.h hVarF = f();
        if (hVarF == null) {
            hVarF = new com.roblox.client.chat.h();
            if (j != -1) {
                Bundle bundle = new Bundle();
                bundle.putLong("START_CONVERSATION_ID_EXTRA", j);
                hVarF.setArguments(bundle);
            }
        } else if (hVarF.isAdded() && j != -1 && (dVarC = com.roblox.client.chat.a.a.a().c(j)) != null) {
            hVarF.onChatNewConversationEvent(new com.roblox.client.e.g(dVarC));
        }
        this.f6941c.a(this.f6942d, hVarF, e());
        if (j2 != -1) {
            com.roblox.client.i.g.a().a(new com.roblox.client.h.j(j2, (j.a) null));
        }
    }

    @Override // com.roblox.client.feature.l
    public void a(FeatureState featureState) {
        a(featureState.b("CHAT_CONVERSATION_ID", -1L), featureState.b("USER_ID_EXTRA", -1L), com.roblox.client.chat.a.a.a().h(), featureState.b("CHAT_FORCE_OPEN_CONVERSATION", false));
    }

    @Override // com.roblox.client.feature.l
    public void a() {
        if (com.roblox.client.chat.a.a.a().h()) {
            b(false);
        } else {
            h();
        }
    }

    private void b(boolean z) {
        com.roblox.client.chat.h hVarF = f();
        if (hVarF != null) {
            if (z) {
                this.f6941c.c(hVarF);
            } else {
                this.f6941c.b(hVarF);
            }
        }
    }

    private void h() {
        Fragment fragmentB = this.f6941c.b("DISABLED_FRAGMENT");
        if (fragmentB != null) {
            this.f6941c.c(fragmentB);
        }
    }

    public void b() {
        b(true);
    }

    public void a(boolean z) {
        if (z) {
            h();
        } else {
            b();
        }
        a(z, true);
    }

    @Override // com.roblox.client.feature.l
    public void c() {
    }

    @Override // com.roblox.client.feature.l
    public boolean d() {
        com.roblox.client.chat.h hVarF = f();
        if (hVarF != null) {
            return hVarF.d();
        }
        return false;
    }

    protected String e() {
        return com.roblox.client.chat.h.class.getName();
    }

    public com.roblox.client.chat.h f() {
        Fragment fragmentB = this.f6941c.b(e());
        if (fragmentB instanceof com.roblox.client.chat.h) {
            return (com.roblox.client.chat.h) fragmentB;
        }
        return null;
    }

    @Override // com.roblox.client.feature.l
    public String g() {
        return "tabChat";
    }
}
