package com.roblox.client.f;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.components.n;
import com.roblox.client.components.p;
import com.roblox.client.e.w;
import com.roblox.client.m;
import com.roblox.client.util.g;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b extends m implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.roblox.client.j.c f6928a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f6929b = "rbx.events";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Toolbar f6930c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinearLayout f6931d;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_events, viewGroup, false);
        this.f6930c = (Toolbar) viewInflate.findViewById(R.id.toolbar);
        this.f6930c.setTitle(R.string.CommonUI_Features_Label_Events);
        p.a(this.f6930c, getContext(), new View.OnClickListener() { // from class: com.roblox.client.f.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!b.this.a()) {
                    b.this.getActivity().onBackPressed();
                }
            }
        });
        this.f6931d = (LinearLayout) viewInflate.findViewById(R.id.event_layout);
        a(this.f6931d);
        a(this.f6930c.getMenu(), getActivity().getMenuInflater());
        return viewInflate;
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        org.greenrobot.eventbus.c.a().a(this);
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStop() {
        org.greenrobot.eventbus.c.a().b(this);
        super.onStop();
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        c();
    }

    @j(a = ThreadMode.MAIN)
    public void onUnreadNotificationCountEvent(w wVar) {
        c();
    }

    private void c() {
        if (this.f6928a != null) {
            this.f6928a.b();
        }
    }

    private void a(Menu menu, MenuInflater menuInflater) {
        new com.roblox.client.j.d(this, "tabEvents").a(menu, menuInflater);
        this.f6928a = new com.roblox.client.j.c(this);
        this.f6928a.a(menu, menuInflater);
    }

    private void a(LinearLayout linearLayout) {
        if (RobloxSettings.eventsData != null) {
            try {
                JSONArray jSONArray = new JSONObject(RobloxSettings.eventsData).getJSONArray("Data");
                int length = jSONArray.length();
                g.b("rbx.events", "populateEvents() count:" + length);
                for (int i = 0; i < length; i++) {
                    linearLayout.addView(a(jSONArray.getJSONObject(i), false));
                }
                return;
            } catch (Exception e) {
                g.d("rbx.events", "Parsing events json error: " + e.getMessage());
                return;
            }
        }
        g.d("rbx.events", "No active events");
    }

    private n a(JSONObject jSONObject, boolean z) throws JSONException {
        n nVar = new n(getActivity(), jSONObject.getString("Title"), new com.roblox.client.util.c().c(RobloxSettings.baseUrlWWW()) + jSONObject.getString("PageUrl"), jSONObject.getString("LogoImageURL"), z);
        nVar.setOnClickListener(this);
        return nVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view instanceof n) {
            n nVar = (n) view;
            String eventUrl = nVar.getEventUrl();
            if (!TextUtils.isEmpty(eventUrl)) {
                a(eventUrl);
            } else {
                g.c("rbx.events", "Null or Empty URL for the event: " + nVar.getEventName());
            }
        }
    }

    private void a(String str) {
        Fragment fragmentA = getChildFragmentManager().a("MORE_NATIVE_WEB_FRAGMENT");
        if (fragmentA == null) {
            fragmentA = new com.roblox.client.n();
            Bundle bundle = new Bundle();
            bundle.putString("DEFAULT_URL", str);
            fragmentA.setArguments(bundle);
        }
        ((com.roblox.client.n) fragmentA).c(str);
        android.support.v4.app.p pVarA = getChildFragmentManager().a();
        if (!fragmentA.isAdded()) {
            pVarA.a(R.id.events_container, fragmentA, "MORE_NATIVE_WEB_FRAGMENT");
        }
        pVarA.c(fragmentA);
        pVarA.d();
    }

    public boolean a() {
        Fragment fragmentA = getChildFragmentManager().a("MORE_NATIVE_WEB_FRAGMENT");
        if (fragmentA != null && fragmentA.isAdded()) {
            if (((com.roblox.client.n) fragmentA).c()) {
                return true;
            }
            return b();
        }
        return false;
    }

    public boolean b() {
        Fragment fragmentA = getChildFragmentManager().a("MORE_NATIVE_WEB_FRAGMENT");
        if (fragmentA == null || !fragmentA.isAdded()) {
            return false;
        }
        android.support.v4.app.p pVarA = getChildFragmentManager().a();
        pVarA.a(fragmentA);
        pVarA.d();
        return true;
    }
}
