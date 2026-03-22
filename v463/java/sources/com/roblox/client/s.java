package com.roblox.client;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.app.b;
import com.roblox.client.ab.d;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class s extends androidx.fragment.app.b implements d.a {
    protected com.roblox.client.ab.d aq;
    public final String ag = "dialogHeight";
    public final String ah = "dialogWidth";
    public final String ai = "dialogGravity";
    public final String aj = "dialogOffsetY";
    public final String ak = "dialogOffsetX";
    protected int al = 0;
    protected int am = 0;
    protected int an = 0;
    protected int ao = 0;
    protected int ap = 0;
    protected com.roblox.client.p.b ar = ao();

    protected com.roblox.client.p.b ao() {
        return null;
    }

    public boolean ap() {
        androidx.fragment.app.c cVarR = r();
        if (cVarR instanceof q) {
            return ((q) cVarR).D();
        }
        com.roblox.client.ae.k.d("roblox.app", "The activity containing this fragment must be of type RobloxActivity!");
        return false;
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        Bundle bundleN = n();
        if (bundleN != null) {
            this.al = bundleN.getInt("dialogHeight", 0);
            this.am = bundleN.getInt("dialogWidth", 0);
            this.an = bundleN.getInt("dialogGravity", 0);
            this.ao = bundleN.getInt("dialogOffsetY", 0);
            this.ap = bundleN.getInt("dialogOffsetX", 0);
        }
    }

    protected View a(LayoutInflater layoutInflater, View view) {
        if (this.ar == null || !b.bO()) {
            return view;
        }
        View viewA = this.ar.a(layoutInflater, this);
        this.ar.a().addView(view);
        return viewA;
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void i() {
        super.i();
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void d(Bundle bundle) {
        super.d(bundle);
        Dialog dialogC = c();
        if (dialogC != null) {
            Window window = dialogC.getWindow();
            if (window != null) {
                if (this.al != 0) {
                    int i = this.am;
                    if (i == 0) {
                        i = -2;
                    }
                    window.setLayout(i, this.al);
                }
                window.setGravity(this.an);
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.y = this.ao;
                attributes.x = this.ap;
                window.setAttributes(attributes);
            }
            dialogC.setCanceledOnTouchOutside(true);
        }
        com.roblox.client.ab.d dVar = new com.roblox.client.ab.d(this);
        this.aq = dVar;
        dVar.a(this);
    }

    public void b(String str) {
        androidx.fragment.app.c cVarR = r();
        if (cVarR instanceof r) {
            ((r) cVarR).d(str);
        }
    }

    public void d(int i) {
        androidx.fragment.app.c cVarR = r();
        if (cVarR instanceof r) {
            ((r) cVarR).c(i);
        }
    }

    public void c(String str) {
        androidx.fragment.app.c cVarR = r();
        if (cVarR instanceof r) {
            ((r) cVarR).e(str);
        }
    }

    public void b(int i, Object... objArr) {
        androidx.fragment.app.c cVarR = r();
        if (cVarR instanceof r) {
            ((r) cVarR).a(i, objArr);
        }
    }

    public void c(int i, int i2) {
        androidx.fragment.app.c cVarR = r();
        if (cVarR instanceof r) {
            ((r) cVarR).a(i, i2);
        }
    }

    public void a(String str, int i) {
        androidx.fragment.app.c cVarR = r();
        if (cVarR instanceof r) {
            ((r) cVarR).a(str, i);
        }
    }

    public synchronized void a(CharSequence charSequence) {
        androidx.fragment.app.c cVarR = r();
        if (cVarR == null) {
            return;
        }
        androidx.appcompat.app.b bVarB = new b.a(cVarR).b();
        TextView textView = new TextView(cVarR);
        String string = cVarR.getString(o.j.CommonUI_Messages_Response_RobloxSupport);
        int iIndexOf = charSequence.toString().indexOf(string);
        com.roblox.client.ae.a.b.a(textView, charSequence.toString(), new com.roblox.client.ae.a.c(cVarR, null, string, iIndexOf, iIndexOf + string.length()));
        textView.setTextSize(20.0f);
        textView.setEllipsize(null);
        bVarB.a(textView, 150, 100, 150, 100);
        bVarB.setCanceledOnTouchOutside(true);
        try {
            bVarB.show();
        } catch (WindowManager.BadTokenException unused) {
        }
    }

    public void a(com.roblox.client.ab.e eVar) {
        int color;
        com.roblox.client.ae.k.c("rbx.theme", getClass().getSimpleName() + ".onThemeChanged() " + eVar);
        if (this.ar != null) {
            int i = AnonymousClass1.f6973a[eVar.ordinal()];
            if (i == 1) {
                color = s().getColor(o.c.lightThemeToolbar);
            } else if (i == 2) {
                color = s().getColor(o.c.RbxBlue3);
            } else {
                color = s().getColor(o.c.darkThemeToolbar);
            }
            this.ar.a(color);
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.s$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6973a;

        static {
            int[] iArr = new int[com.roblox.client.ab.e.values().length];
            f6973a = iArr;
            try {
                iArr[com.roblox.client.ab.e.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6973a[com.roblox.client.ab.e.CLASSIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6973a[com.roblox.client.ab.e.DARK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
