package com.roblox.client.friends.nearby.a;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.roblox.client.o;
import com.roblox.client.p;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends com.google.android.material.bottomsheet.b {
    private long ag;
    private a ah;

    public interface a {
        void a(long j);
    }

    public static d a(long j) {
        d dVar = new d();
        Bundle bundle = new Bundle();
        bundle.putLong("USER_ID_BUNDLE_PARAM", j);
        dVar.g(bundle);
        return dVar;
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        if (n() != null) {
            this.ag = n().getLong("USER_ID_BUNDLE_PARAM");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.nearby_users_bottom_sheet, viewGroup, false);
        viewInflate.findViewById(o.f.nearby_friend_profile_text_view).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.friends.nearby.a.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.a("nearbyContextMenu", "viewUserProfile");
                d.this.ah.a(d.this.ag);
                d.this.b();
            }
        });
        viewInflate.findViewById(o.f.nearby_friend_cancel_text_view).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.friends.nearby.a.d.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.a("nearbyContextMenu", "cancel");
                d.this.b();
            }
        });
        return viewInflate;
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        p.b("nearbyContextMenu");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (w() instanceof a) {
            this.ah = (a) w();
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        this.ah = null;
    }
}
