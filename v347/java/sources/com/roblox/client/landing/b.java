package com.roblox.client.landing;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.i;
import com.roblox.client.m;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: classes.dex */
public class b extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f7330a;

    public interface a {
        void v();
    }

    public static b a() {
        return new b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof a) {
            this.f7330a = (a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f7330a = null;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        g.b("FragmentAbout", "onCreateView()");
        View viewInflate = layoutInflater.inflate(R.layout.fragment_about_app, viewGroup, false);
        View viewFindViewById = viewInflate.findViewById(R.id.fragment_about_background);
        TextView textView = (TextView) viewInflate.findViewById(R.id.fragment_about_terms_privacy);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.fragment_about_user_agent);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.fragment_about_baseURL);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.landing.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                i.b("about", "close");
                if (b.this.f7330a != null) {
                    b.this.f7330a.v();
                }
            }
        });
        com.roblox.client.util.a.b.a(getActivity(), textView);
        textView2.setText(RobloxSettings.userAgent());
        textView3.setText(RobloxSettings.baseUrl());
        return viewInflate;
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        i.b("about");
    }
}
