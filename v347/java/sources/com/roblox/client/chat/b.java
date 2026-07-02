package com.roblox.client.chat;

import android.support.v4.app.Fragment;
import android.view.View;
import com.roblox.client.R;
import com.roblox.client.p;
import com.roblox.client.realtime.RealtimeService;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends Fragment implements com.roblox.client.components.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected View f6532a;

    public void a(View view) {
        this.f6532a = view.findViewById(R.id.connecting_banner);
    }

    protected void u_() {
        if (this.f6532a != null) {
            this.f6532a.setVisibility((b() || RealtimeService.a()) ? 8 : 0);
        }
    }

    protected boolean b() {
        return getParentFragment() instanceof h;
    }

    protected void c() {
        if (!b()) {
            getActivity().finish();
            getActivity().overridePendingTransition(0, R.anim.out_to_right);
        } else {
            ((h) getParentFragment()).b();
        }
    }

    @Override // com.roblox.client.components.a
    public boolean d() {
        return false;
    }

    protected void e() {
        p.a(getContext(), getView());
    }
}
