package com.roblox.client.landing;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f6445a;

    public static b a(a aVar) {
        b bVar = new b();
        Bundle bundle = new Bundle();
        bundle.putSerializable("itemId", aVar);
        bVar.g(bundle);
        return bVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        this.f6445a = (a) n().getSerializable("itemId");
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(o.g.fragment_carousel_item, viewGroup, false);
        ImageView imageView = (ImageView) viewGroup2.findViewById(o.f.landing_carousel_slide_image_view);
        RbxTextView rbxTextView = (RbxTextView) viewGroup2.findViewById(o.f.landing_carousel_slide_title);
        RbxTextView rbxTextView2 = (RbxTextView) viewGroup2.findViewById(o.f.landing_carousel_slide_body_text);
        imageView.setImageResource(this.f6445a.a());
        Context contextP = p();
        rbxTextView.setText(com.roblox.client.locale.a.a.a(contextP, this.f6445a.c(), new Object[0]));
        rbxTextView2.setText(com.roblox.client.locale.a.a.a(contextP, this.f6445a.b(), new Object[0]));
        return viewGroup2;
    }
}
