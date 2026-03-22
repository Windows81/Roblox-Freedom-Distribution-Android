package com.roblox.client.u;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.roblox.client.ae.k;
import com.roblox.client.s;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends s {
    protected e au;

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        a(d.ON_ATTACH);
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        a(d.ON_CREATE);
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewA = super.a(layoutInflater, viewGroup, bundle);
        a(d.ON_CREATE_VIEW);
        return viewA;
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void d(Bundle bundle) {
        super.d(bundle);
        a(d.ON_ACTIVITY_CREATED);
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        a(d.ON_START);
    }

    @Override // androidx.fragment.app.Fragment
    public void F() {
        super.F();
        a(d.ON_RESUME);
    }

    @Override // androidx.fragment.app.Fragment
    public void G() {
        super.G();
        a(d.ON_PAUSE);
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void i() {
        super.i();
        a(d.ON_STOP);
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void j() {
        super.j();
        a(d.ON_DESTROY_VIEW);
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        a(d.ON_DETACH);
    }

    private void a(d dVar) {
        e eVar = this.au;
        if (eVar != null) {
            eVar.a(dVar);
        } else {
            k.d("RobloxMVPFragment", "Lifecycle listener is null.");
        }
    }
}
