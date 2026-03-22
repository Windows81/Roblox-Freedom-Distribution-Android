package com.roblox.client.contacts;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SearchView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.f.a.a;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.roblox.client.ae.k;
import com.roblox.client.ae.l;
import com.roblox.client.ae.s;
import com.roblox.client.ae.v;
import com.roblox.client.components.RbxSearchView;
import com.roblox.client.contacts.c;
import com.roblox.client.contacts.i;
import com.roblox.client.o;
import com.roblox.client.u.a;
import com.roblox.client.x;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h extends com.roblox.client.u.g implements a.InterfaceC0039a<Cursor>, c.d, i.c {
    private i.b aA;
    private a.InterfaceC0181a aB;
    private a as;
    private RecyclerView at;
    private RelativeLayout av;
    private RelativeLayout aw;
    private TextView ax;
    private LinearLayout ay;
    private c az;

    public interface a {
        void d(int i);

        void r();
    }

    public static h aq() {
        return new h();
    }

    @Override // com.roblox.client.u.g, com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        this.aA = new g(this, new e(s.a(r().getApplicationContext()), new b(new com.roblox.client.http.h(), new v.b())));
    }

    @Override // com.roblox.client.u.g, androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.fragment_contacts, viewGroup, false);
        this.ay = (LinearLayout) viewInflate.findViewById(o.f.contacts_contacts_list);
        this.av = (RelativeLayout) viewInflate.findViewById(o.f.contacts_error_screen);
        this.aw = (RelativeLayout) viewInflate.findViewById(o.f.contacts_loading_screen);
        this.ax = (TextView) viewInflate.findViewById(o.f.contacts_error_text);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(o.f.contacts_recycler_view);
        this.at = recyclerView;
        recyclerView.setHasFixedSize(true);
        viewInflate.findViewById(o.f.contacts_error_ok_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.contacts.h.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                h.this.as.r();
            }
        });
        final RbxSearchView rbxSearchView = (RbxSearchView) viewInflate.findViewById(o.f.contacts_search_view);
        rbxSearchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.roblox.client.contacts.h.2
            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                k.b("rbx.contacts", "Search EditText:afterTextChanged");
                x.a(h.this.r(), rbxSearchView);
                return true;
            }

            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                h.this.d(str);
                return true;
            }
        });
        this.at.setLayoutManager(new LinearLayoutManager(p()));
        return viewInflate;
    }

    @Override // com.roblox.client.u.g, androidx.fragment.app.Fragment
    public void F() {
        super.F();
        k.b("rbx.contacts", "onResume.");
        c cVar = this.az;
        if (cVar == null || cVar.a() == 0) {
            av();
            this.as.d(1);
            D().b(0, null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.roblox.client.u.g, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (context instanceof a) {
            this.as = (a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // com.roblox.client.u.g, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        this.as = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        c cVar = this.az;
        if (cVar != null) {
            cVar.getFilter().filter(str);
        }
    }

    private boolean au() {
        return r() == null;
    }

    private void av() {
        this.aw.setVisibility(0);
    }

    private void aw() {
        this.aw.setVisibility(8);
        this.ay.setVisibility(0);
    }

    private void c(com.roblox.client.contacts.model.d dVar) {
        String strG = dVar.g();
        if (strG == null) {
            Toast.makeText(r(), a(o.j.Feature_ContactUpsell_PhoneNumber_Missing), 0).show();
            return;
        }
        String str = String.format(com.roblox.client.b.ay(), com.roblox.client.ad.c.a().e()) + " " + com.roblox.client.b.az();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:" + strG));
        intent.putExtra("sms_body", str);
        if (l.a(r(), intent)) {
            a(intent);
            return;
        }
        Intent intent2 = new Intent();
        intent2.setAction("android.intent.action.SEND");
        intent2.setType("text/plain");
        intent2.putExtra("android.intent.extra.TEXT", str);
        if (l.a(r(), intent2)) {
            a(intent2);
        } else {
            d(o.j.Game_Launch_Response_NoSharingAppInstalled);
        }
    }

    private void a(boolean z, int i) {
        if (z) {
            this.ax.setText(i);
            if (this.av.getVisibility() != 0) {
                this.av.setVisibility(0);
                this.ay.setVisibility(8);
                return;
            }
            return;
        }
        if (this.ay.getVisibility() != 0) {
            this.ay.setVisibility(0);
            this.av.setVisibility(8);
        }
    }

    @Override // androidx.f.a.a.InterfaceC0039a
    public androidx.f.b.c<Cursor> a(int i, Bundle bundle) {
        k.b("rbx.contacts", "Creating the loader.");
        return new androidx.f.b.b(r(), com.roblox.client.contacts.a.f5895a, com.roblox.client.contacts.a.f5896b, "mimetype IN (?, ?, ?, ?) AND in_visible_group = ? AND display_name <> ? AND has_phone_number = ?", com.roblox.client.contacts.a.f5897c, "display_name ASC");
    }

    @Override // androidx.f.a.a.InterfaceC0039a
    public void a(androidx.f.b.c<Cursor> cVar, Cursor cursor) {
        if (au()) {
            return;
        }
        c cVar2 = this.az;
        if (cVar2 == null || cVar2.a() == 0) {
            k.b("rbx.contacts", "Contacts loaded.");
            this.aA.a(cursor);
        }
    }

    @Override // androidx.f.a.a.InterfaceC0039a
    public void a(androidx.f.b.c<Cursor> cVar) {
        k.b("rbx.contacts", "Loader reset.");
    }

    @Override // com.roblox.client.contacts.i.c
    public void ar() {
        if (au()) {
            return;
        }
        k.b("rbx.contacts", "Unique contacts generated.");
        av();
    }

    @Override // com.roblox.client.contacts.i.c
    public void as() {
        if (au()) {
            return;
        }
        k.b("rbx.contacts", "Roblox contacts fetched.");
        av();
    }

    @Override // com.roblox.client.contacts.i.c
    public void at() {
        if (au()) {
            return;
        }
        aw();
        a(true, o.j.Features_FriendFinder_Label_EmptyContactsBook);
        this.as.d(5);
    }

    @Override // com.roblox.client.contacts.i.c
    public void a(ArrayList<com.roblox.client.contacts.model.d> arrayList) {
        if (au()) {
            return;
        }
        k.b("rbx.contacts", "Roblox contacts merged. Total=" + arrayList.size());
        c cVar = new c(arrayList, this);
        this.az = cVar;
        this.at.setAdapter(cVar);
        this.az.c();
        aw();
        this.as.d(2);
    }

    @Override // com.roblox.client.contacts.i.c
    public void a(List<com.roblox.client.contacts.model.d> list) {
        if (au()) {
            return;
        }
        this.az.a(list);
    }

    @Override // com.roblox.client.contacts.i.c
    public void e(int i) {
        if (au()) {
            return;
        }
        aw();
        a(true, o.j.Features_FriendFinder_Response_NetworkError);
        this.as.d(3);
    }

    @Override // com.roblox.client.contacts.c.d
    public void a(com.roblox.client.contacts.model.d dVar) {
        if (au()) {
            return;
        }
        k.b("rbx.contacts", "Sending friend invite.");
        this.aA.a(dVar);
    }

    @Override // com.roblox.client.contacts.c.d
    public void b(com.roblox.client.contacts.model.d dVar) {
        if (au()) {
            return;
        }
        this.aA.b(dVar);
        k.b("rbx.contacts", "Sending app invite.");
        c(dVar);
    }

    @Override // com.roblox.client.u.a
    public void a(i.b bVar) {
        this.aA = bVar;
    }

    @Override // com.roblox.client.u.a
    public void a(a.InterfaceC0181a interfaceC0181a) {
        this.aB = interfaceC0181a;
    }

    @Override // com.roblox.client.u.a
    public void a(com.roblox.client.u.e eVar) {
        this.au = eVar;
    }
}
