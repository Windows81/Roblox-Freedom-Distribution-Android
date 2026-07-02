package com.roblox.client.c;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Point;
import android.os.Bundle;
import android.support.v4.app.g;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;

/* JADX INFO: loaded from: classes.dex */
public class b extends g implements DialogInterface.OnCancelListener, View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f6494a;

    public interface a {
        void b();

        void b(Context context);

        void c();

        void d();
    }

    public void a(a aVar) {
        this.f6494a = aVar;
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        setStyle(1, getTheme());
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_fragment_app_rating, viewGroup, false);
        viewInflate.findViewById(R.id.dialog_rating_positive_btn).setOnClickListener(this);
        viewInflate.findViewById(R.id.dialog_rating_negative_btn).setOnClickListener(this);
        viewInflate.findViewById(R.id.dialog_rating_skip_btn).setOnClickListener(this);
        viewInflate.findViewById(R.id.dialog_rating_close_btn).setOnClickListener(this);
        return viewInflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        Window window = getDialog().getWindow();
        Point point = new Point();
        if (window != null) {
            window.getWindowManager().getDefaultDisplay().getSize(point);
            window.setLayout((int) ((RobloxSettings.isPhone() ? 1.0f : 0.5f) * point.x), -2);
            window.setGravity(17);
        }
        super.onResume();
    }

    @Override // android.support.v4.app.g, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (this.f6494a != null) {
            this.f6494a.b();
        } else {
            com.roblox.client.util.g.e("RateMeMaybeFragment", "onCancel - mInterface is null");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f6494a == null) {
            com.roblox.client.util.g.e("RateMeMaybeFragment", "onClick - mInterface is null");
            return;
        }
        switch (view.getId()) {
            case R.id.dialog_rating_close_btn /* 2131230867 */:
                this.f6494a.b();
                break;
            case R.id.dialog_rating_negative_btn /* 2131230868 */:
                this.f6494a.c();
                break;
            case R.id.dialog_rating_positive_btn /* 2131230869 */:
                this.f6494a.b(getContext());
                break;
            case R.id.dialog_rating_skip_btn /* 2131230870 */:
                this.f6494a.d();
                break;
        }
        a();
    }

    private void a() {
        dismiss();
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }
}
