package com.roblox.client.t;

import android.R;
import android.view.View;
import com.roblox.client.o;
import com.roblox.client.q;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected androidx.fragment.app.c f7483a;

    public a(androidx.fragment.app.c cVar) {
        this.f7483a = cVar;
    }

    protected boolean a() {
        androidx.fragment.app.c cVar = this.f7483a;
        if (cVar == null) {
            return false;
        }
        return ((cVar instanceof q) && ((q) cVar).D()) ? false : true;
    }

    protected int b() {
        View viewFindViewById = this.f7483a.findViewById(R.id.content);
        com.roblox.engine.a.b bVarA = com.roblox.engine.a.b.a(viewFindViewById.getRootView(), this.f7483a.getWindowManager(), viewFindViewById, ((q) this.f7483a).L().b());
        int dimensionPixelSize = this.f7483a.getResources().getDimensionPixelSize(o.d.mainTabWidgetHeight);
        if (com.roblox.client.b.cj()) {
            return (bVarA.f7585b - bVarA.g) - bVarA.f7586c;
        }
        return ((bVarA.f7585b - bVarA.g) - bVarA.f7586c) - dimensionPixelSize;
    }
}
