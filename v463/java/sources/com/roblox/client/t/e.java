package com.roblox.client.t;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.i;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.s;
import com.roblox.client.u;
import com.roblox.client.v;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.client.ab.c f7496c;

    public e(s sVar, String str) {
        this(sVar.r(), str);
    }

    public e(androidx.fragment.app.c cVar, String str) {
        super(cVar);
        this.f7495b = str;
        this.f7496c = new com.roblox.client.ab.f();
    }

    public MenuItem a(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(o.h.menu_button_robux, menu);
        MenuItem menuItemFindItem = menu.findItem(o.f.action_robux);
        View actionView = menuItemFindItem.getActionView();
        actionView.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.t.e.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.this.c();
            }
        });
        ((ImageView) actionView.findViewById(o.f.icon_robux)).setImageResource(a(this.f7496c.c()));
        return menuItemFindItem;
    }

    private int a(com.roblox.client.ab.e eVar) {
        return o.e.topbar_ic_robux_gold;
    }

    /* JADX INFO: renamed from: com.roblox.client.t.e$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7498a;

        static {
            int[] iArr = new int[com.roblox.client.ab.e.values().length];
            f7498a = iArr;
            try {
                iArr[com.roblox.client.ab.e.DARK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7498a[com.roblox.client.ab.e.LIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7498a[com.roblox.client.ab.e.CLASSIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private int b(com.roblox.client.ab.e eVar) {
        if (AnonymousClass2.f7498a[eVar.ordinal()] == 1) {
            return o.k.Theme_Roblox_Dark_WebDialogCenteredTitle;
        }
        return o.k.Theme_Roblox_WebDialogCenteredTitle;
    }

    public void c() {
        a((i) null);
    }

    public void a(i iVar) {
        String strN;
        int iB;
        if (a()) {
            v vVar = new v();
            if (com.roblox.client.b.cx()) {
                iB = this.f7483a.getResources().getDimensionPixelSize(o.d.tencentRobuxDialogHeight);
                strN = "";
            } else {
                strN = u.N();
                iB = b();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("showRobux", true);
            bundle.putInt("dialogHeight", iB);
            vVar.g(bundle);
            vVar.f(strN);
            vVar.a(0, b(this.f7496c.c()));
            if (iVar != null) {
                vVar.g().a(iVar);
            }
            vVar.a(this.f7483a.j(), "dialog");
            p.b("nativeMain", "robux", this.f7495b);
        }
    }
}
