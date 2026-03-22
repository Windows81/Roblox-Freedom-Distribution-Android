package com.roblox.client.friends.a;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.roblox.client.ae.a.b;
import com.roblox.client.ae.a.d;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.s;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends s {
    private InterfaceC0134a as;

    /* JADX INFO: renamed from: com.roblox.client.friends.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0134a {
        void n();
    }

    public static a aq() {
        return new a();
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.fragment_contacts_presentation, viewGroup, false);
        RbxTextView rbxTextView = (RbxTextView) viewInflate.findViewById(o.f.contacts_fine_print_tv);
        String strA = a(o.j.Features_FriendFinder_Label_PermissionsFinePrintLink);
        String strA2 = a(o.j.Features_FriendFinder_Response_ContactPermissionNeeded, strA);
        int iIndexOf = strA2.indexOf(strA);
        b.a(rbxTextView, strA2, new d(com.roblox.client.b.aK(), r(), strA, iIndexOf, iIndexOf + strA.length()));
        viewInflate.findViewById(o.f.contacts_needed_continue_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.friends.a.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.as.n();
            }
        });
        return viewInflate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (context instanceof InterfaceC0134a) {
            this.as = (InterfaceC0134a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        p.b("contactsPermission");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        this.as = null;
    }
}
