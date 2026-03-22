package com.roblox.client.friends.nearby.a;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.s;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends s {
    private InterfaceC0142a as;

    /* JADX INFO: renamed from: com.roblox.client.friends.nearby.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0142a {
        void p();
    }

    public static a aq() {
        return new a();
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.fragment_nearby_presentation, viewGroup, false);
        viewInflate.findViewById(o.f.nearby_presentation_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.friends.nearby.a.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (a.this.as != null) {
                    p.a("nearbyPresentation", "start");
                    a.this.as.p();
                }
            }
        });
        RbxTextView rbxTextView = (RbxTextView) viewInflate.findViewById(o.f.nearby_presentation_text_view);
        String strA = a(o.j.Features_Nearby_Label_LearnMore);
        String strA2 = a(o.j.Features_Nearby_Label_IntroText, strA);
        int iIndexOf = strA2.indexOf(strA);
        com.roblox.client.ae.a.b.a(rbxTextView, strA2, new com.roblox.client.ae.a.d(com.roblox.client.b.bn(), p(), strA, iIndexOf, iIndexOf + strA.length()));
        return viewInflate;
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        p.b("nearbyPresentation");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (context instanceof InterfaceC0142a) {
            this.as = (InterfaceC0142a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        this.as = null;
    }
}
