package com.roblox.client.phonenumber;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SearchView;
import androidx.recyclerview.widget.RecyclerView;
import com.roblox.client.ae.k;
import com.roblox.client.ae.n;
import com.roblox.client.components.RbxSearchView;
import com.roblox.client.o;
import com.roblox.client.phonenumber.b;
import com.roblox.client.s;
import com.roblox.client.x;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends s {
    private RecyclerView as;
    private b at;
    private InterfaceC0163a au;

    /* JADX INFO: renamed from: com.roblox.client.phonenumber.a$a, reason: collision with other inner class name */
    public interface InterfaceC0163a {
        void a(PhonePrefix phonePrefix);

        void l_();
    }

    public static a aq() {
        return new a();
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.fragment_phone_prefix, viewGroup, false);
        this.as = (RecyclerView) viewInflate.findViewById(o.f.phone_prefix_list);
        final RbxSearchView rbxSearchView = (RbxSearchView) viewInflate.findViewById(o.f.phone_prefix_search_view);
        rbxSearchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.roblox.client.phonenumber.a.1
            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                k.c("FragmentPhonePrefixList", "Search EditText:afterTextChanged");
                x.a(a.this.r(), rbxSearchView);
                return true;
            }

            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                a.this.d(str);
                return true;
            }
        });
        b bVar = new b(new b.a() { // from class: com.roblox.client.phonenumber.a.2
            @Override // com.roblox.client.phonenumber.b.a
            public void a(PhonePrefix phonePrefix) {
                a.this.au.a(phonePrefix);
            }
        });
        this.at = bVar;
        this.as.setAdapter(bVar);
        this.at.a(n.f5647a);
        return viewInflate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (context instanceof InterfaceC0163a) {
            this.au = (InterfaceC0163a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        this.au.l_();
        this.au = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        b bVar = this.at;
        if (bVar != null) {
            bVar.getFilter().filter(str);
        }
    }
}
