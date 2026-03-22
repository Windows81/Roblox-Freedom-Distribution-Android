package com.roblox.client.b;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Point;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.roblox.client.ae.k;
import com.roblox.client.o;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends androidx.fragment.app.b implements DialogInterface.OnCancelListener, View.OnClickListener {
    private a ag;

    public interface a {
        void b();

        void c();

        void c(Context context);

        void d();
    }

    public void a(a aVar) {
        this.ag = aVar;
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        e(true);
        a(1, d());
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.dialog_fragment_app_rating, viewGroup, false);
        viewInflate.findViewById(o.f.dialog_rating_positive_btn).setOnClickListener(this);
        viewInflate.findViewById(o.f.dialog_rating_negative_btn).setOnClickListener(this);
        viewInflate.findViewById(o.f.dialog_rating_skip_btn).setOnClickListener(this);
        viewInflate.findViewById(o.f.dialog_rating_close_btn).setOnClickListener(this);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void F() {
        Window window = c().getWindow();
        Point point = new Point();
        if (window != null) {
            window.getWindowManager().getDefaultDisplay().getSize(point);
            window.setLayout((int) (point.x * (u.j() ? 1.0f : 0.5f)), -2);
            window.setGravity(17);
        }
        super.F();
    }

    @Override // androidx.fragment.app.b, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        a aVar = this.ag;
        if (aVar != null) {
            aVar.b();
        } else {
            k.e("RateMeMaybeFragment", "onCancel - mInterface is null");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.ag == null) {
            k.e("RateMeMaybeFragment", "onClick - mInterface is null");
            return;
        }
        if (view.getId() == o.f.dialog_rating_close_btn) {
            this.ag.b();
        } else if (view.getId() == o.f.dialog_rating_negative_btn) {
            this.ag.c();
        } else if (view.getId() == o.f.dialog_rating_positive_btn) {
            this.ag.c(p());
        } else if (view.getId() == o.f.dialog_rating_skip_btn) {
            this.ag.d();
        }
        ao();
    }

    private void ao() {
        a();
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void j() {
        Dialog dialogC = c();
        if (dialogC != null && C()) {
            dialogC.setDismissMessage(null);
        }
        super.j();
    }
}
