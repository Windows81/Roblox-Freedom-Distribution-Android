package com.roblox.client.landing;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.roblox.client.R;
import com.roblox.client.components.RbxTextView;

/* JADX INFO: loaded from: classes.dex */
public class c extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f7332a;

    public static c a(a aVar) {
        c cVar = new c();
        Bundle bundle = new Bundle();
        bundle.putSerializable("itemId", aVar);
        cVar.setArguments(bundle);
        return cVar;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7332a = (a) getArguments().getSerializable("itemId");
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R.layout.fragment_carousel_item, viewGroup, false);
        ((ImageView) viewGroup2.findViewById(R.id.landing_carousel_slide_image_view)).setImageResource(this.f7332a.a());
        ((RbxTextView) viewGroup2.findViewById(R.id.landing_carousel_slide_title)).setText(this.f7332a.c());
        ((RbxTextView) viewGroup2.findViewById(R.id.landing_carousel_slide_body_text)).setText(this.f7332a.b());
        return viewGroup2;
    }
}
