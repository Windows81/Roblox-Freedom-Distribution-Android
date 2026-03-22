package com.roblox.client.n;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.c.a.t;
import com.roblox.client.ae.k;
import com.roblox.client.l.j;
import com.roblox.client.o;
import com.roblox.client.s;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends s implements View.OnClickListener {
    private long as;
    private String at;
    private String au;
    private String av;

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        Dialog dialogC;
        super.b(bundle);
        Bundle bundleN = n();
        this.as = bundleN.getLong("assetId", -1L);
        this.at = bundleN.getString("title");
        this.au = bundleN.getString("description");
        this.av = bundleN.getString("thumbnail");
        if (this.as != -1 || (dialogC = c()) == null) {
            return;
        }
        dialogC.dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.catalog_promo, viewGroup, false);
        ((TextView) viewInflate.findViewById(o.f.title)).setText(this.at);
        ((TextView) viewInflate.findViewById(o.f.description)).setText(this.au);
        viewInflate.findViewById(o.f.get_button).setOnClickListener(this);
        viewInflate.findViewById(o.f.close_button).setOnClickListener(this);
        t.a(p()).a(this.av).a((ImageView) viewInflate.findViewById(o.f.thumbnail));
        return viewInflate;
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        Dialog dialogC = c();
        if (dialogC != null) {
            Window window = dialogC.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = 0.6f;
            attributes.flags |= 2;
            window.setAttributes(attributes);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (c() != null) {
            if (view.getId() == o.f.close_button) {
                c().dismiss();
                return;
            }
            if (view.getId() == o.f.get_button) {
                c().dismiss();
                String strB = u.b(this.as);
                k.a("rbx.catalog", "assetPath:" + strB);
                j jVar = new j("CATALOG_TAG");
                jVar.a(strB);
                org.greenrobot.eventbus.c.a().c(jVar);
            }
        }
    }
}
