package com.roblox.client.l;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.roblox.client.m;

/* JADX INFO: loaded from: classes.dex */
public class g extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected e f7324a;

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        a(d.ON_ATTACH);
    }

    @Override // com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a(d.ON_CREATE);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        a(d.ON_CREATE_VIEW);
        return viewOnCreateView;
    }

    @Override // com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(d.ON_ACTIVITY_CREATED);
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        a(d.ON_START);
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        a(d.ON_RESUME);
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        a(d.ON_PAUSE);
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        a(d.ON_STOP);
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        a(d.ON_DESTROY_VIEW);
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        a(d.ON_DETACH);
    }

    private void a(d dVar) {
        if (this.f7324a != null) {
            this.f7324a.a(dVar);
        } else {
            com.roblox.client.util.g.d("RobloxMVPFragment", "Lifecycle listener is null.");
        }
    }
}
