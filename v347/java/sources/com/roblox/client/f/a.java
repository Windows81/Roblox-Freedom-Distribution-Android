package com.roblox.client.f;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.t;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.e.q;
import com.roblox.client.m;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: classes.dex */
public class a extends m implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f6924a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6925b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6926c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6927d;

    @Override // com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        Dialog dialog;
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        this.f6924a = arguments.getLong("assetId", -1L);
        this.f6925b = arguments.getString("title");
        this.f6926c = arguments.getString("description");
        this.f6927d = arguments.getString("thumbnail");
        if (this.f6924a == -1 && (dialog = getDialog()) != null) {
            dialog.dismiss();
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.catalog_promo, viewGroup, false);
        ((TextView) viewInflate.findViewById(R.id.title)).setText(this.f6925b);
        ((TextView) viewInflate.findViewById(R.id.description)).setText(this.f6926c);
        viewInflate.findViewById(R.id.get_button).setOnClickListener(this);
        viewInflate.findViewById(R.id.close_button).setOnClickListener(this);
        t.a(getContext()).a(this.f6927d).a((ImageView) viewInflate.findViewById(R.id.thumbnail));
        return viewInflate;
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = 0.6f;
            attributes.flags |= 2;
            window.setAttributes(attributes);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (getDialog() != null) {
            switch (view.getId()) {
                case R.id.close_button /* 2131230798 */:
                    getDialog().dismiss();
                    break;
                case R.id.get_button /* 2131230951 */:
                    getDialog().dismiss();
                    String strAssetPagePath = RobloxSettings.assetPagePath(this.f6924a);
                    g.a("rbx.catalog", "assetPath:" + strAssetPagePath);
                    q qVar = new q("CATALOG_TAG");
                    qVar.a(strAssetPagePath);
                    org.greenrobot.eventbus.c.a().c(qVar);
                    break;
            }
        }
    }
}
