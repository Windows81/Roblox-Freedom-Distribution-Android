package com.roblox.client.p;

import android.graphics.Rect;
import android.view.View;
import androidx.core.h.o;
import androidx.core.h.r;
import androidx.core.h.z;
import androidx.lifecycle.p;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private p<Rect> f6627a = new p<>();

    public p<Rect> a() {
        return this.f6627a;
    }

    public void a(View view) {
        if (com.roblox.client.b.bO()) {
            r.a(view, this);
        }
    }

    @Override // androidx.core.h.o
    public z a(View view, z zVar) {
        Rect rect = new Rect();
        rect.top = zVar.b();
        rect.left = zVar.a();
        rect.right = zVar.c();
        rect.bottom = zVar.d();
        this.f6627a.b(rect);
        return zVar;
    }

    public Rect b() {
        return this.f6627a.m_();
    }
}
