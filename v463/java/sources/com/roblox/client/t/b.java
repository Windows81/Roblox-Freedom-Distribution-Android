package com.roblox.client.t;

import android.os.Bundle;
import androidx.lifecycle.i;
import com.roblox.client.p;
import com.roblox.client.s;
import com.roblox.client.u;
import com.roblox.client.v;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7484b;

    public b(s sVar, String str) {
        super(sVar.r());
        this.f7484b = str;
    }

    public void a(i iVar) {
        if (a()) {
            v vVar = new v();
            if (iVar != null) {
                vVar.g().a(iVar);
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("showBC", true);
            bundle.putInt("dialogHeight", b());
            vVar.g(bundle);
            vVar.f(u.O());
            vVar.a(1, vVar.d());
            vVar.a(this.f7483a.j(), "dialog");
            p.b("nativeMain", "buildersClub", this.f7484b);
        }
    }
}
