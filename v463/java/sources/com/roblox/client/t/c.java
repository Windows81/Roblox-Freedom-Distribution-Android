package com.roblox.client.t;

import android.app.Activity;
import androidx.lifecycle.i;
import com.roblox.client.m;
import com.roblox.client.p;
import com.roblox.client.s;
import com.roblox.client.s.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private s f7485a;

    public interface a {
        void a();
    }

    public c(s sVar) {
        this.f7485a = sVar;
    }

    public void a(i iVar) {
        if (this.f7485a == null) {
            return;
        }
        p.b("logout");
        final androidx.fragment.app.c cVarR = this.f7485a.r();
        m mVar = new m();
        mVar.a(2, 0);
        if (iVar != null) {
            mVar.g().a(iVar);
        }
        mVar.a(new m.a() { // from class: com.roblox.client.t.c.1
            @Override // com.roblox.client.m.a
            public void a() {
                c.this.a(cVarR);
            }
        });
        mVar.a(cVarR.j(), "dialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity) {
        if (activity != null) {
            com.roblox.client.s.c.d().a(activity, c.e.LOGOUT_BY_USER_IN_NATIVE);
        }
    }
}
