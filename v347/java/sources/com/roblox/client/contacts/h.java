package com.roblox.client.contacts;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.v;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SearchView;
import android.widget.TextView;
import android.widget.Toast;
import com.roblox.client.R;
import com.roblox.client.components.RbxSearchView;
import com.roblox.client.contacts.c;
import com.roblox.client.contacts.i;
import com.roblox.client.l.a;
import com.roblox.client.util.m;
import com.roblox.client.util.p;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h extends com.roblox.client.l.g implements v.a<Cursor>, c.d, i.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f6841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RecyclerView f6842c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RelativeLayout f6843d;
    private RelativeLayout e;
    private TextView f;
    private LinearLayout g;
    private c h;
    private i.b i;
    private a.InterfaceC0114a j;

    public interface a {
        void d(int i);

        void n();
    }

    public static h a() {
        return new h();
    }

    @Override // com.roblox.client.l.g, com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.i = new g(this, new e(m.a(getActivity().getApplicationContext()), new b(new com.roblox.client.http.h(), new p.b())));
    }

    @Override // com.roblox.client.l.g, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_contacts, viewGroup, false);
        this.g = (LinearLayout) viewInflate.findViewById(R.id.contacts_contacts_list);
        this.f6843d = (RelativeLayout) viewInflate.findViewById(R.id.contacts_error_screen);
        this.e = (RelativeLayout) viewInflate.findViewById(R.id.contacts_loading_screen);
        this.f = (TextView) viewInflate.findViewById(R.id.contacts_error_text);
        this.f6842c = (RecyclerView) viewInflate.findViewById(R.id.contacts_recycler_view);
        this.f6842c.setHasFixedSize(true);
        viewInflate.findViewById(R.id.contacts_error_ok_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.contacts.h.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                h.this.f6841b.n();
            }
        });
        final RbxSearchView rbxSearchView = (RbxSearchView) viewInflate.findViewById(R.id.contacts_search_view);
        rbxSearchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.roblox.client.contacts.h.2
            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                com.roblox.client.util.g.b("rbx.contacts", "Search EditText:afterTextChanged");
                com.roblox.client.p.a(h.this.getActivity(), rbxSearchView);
                return true;
            }

            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                h.this.a(str);
                return true;
            }
        });
        this.f6842c.setLayoutManager(new LinearLayoutManager(getContext()));
        return viewInflate;
    }

    @Override // com.roblox.client.l.g, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        com.roblox.client.util.g.b("rbx.contacts", "onResume.");
        if (this.h == null || this.h.getItemCount() == 0) {
            f();
            this.f6841b.d(1);
            getLoaderManager().a(0, null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.roblox.client.l.g, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof a) {
            this.f6841b = (a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // com.roblox.client.l.g, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f6841b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.h != null) {
            this.h.getFilter().filter(str);
        }
    }

    private boolean e() {
        return getActivity() == null;
    }

    private void f() {
        this.e.setVisibility(0);
    }

    private void g() {
        this.e.setVisibility(8);
        this.g.setVisibility(0);
    }

    private void c(com.roblox.client.contacts.model.d dVar) {
        String strG = dVar.g();
        if (strG == null) {
            Toast.makeText(getActivity(), getString(R.string.Feature_Contacts_PhoneNumber_Missing), 0).show();
            return;
        }
        String str = String.format(com.roblox.client.b.bp(), com.roblox.client.q.d.a().f()) + " " + com.roblox.client.b.bq();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:" + strG));
        intent.putExtra("sms_body", str);
        if (com.roblox.client.util.h.a(getActivity(), intent)) {
            startActivity(intent);
            return;
        }
        Intent intent2 = new Intent();
        intent2.setAction("android.intent.action.SEND");
        intent2.setType("text/plain");
        intent2.putExtra("android.intent.extra.TEXT", str);
        if (com.roblox.client.util.h.a(getActivity(), intent2)) {
            startActivity(intent2);
        } else {
            alertOk(R.string.Game_Launch_Response_NoSharingAppInstalled);
        }
    }

    private void a(boolean z, int i) {
        if (z) {
            this.f.setText(i);
            if (this.f6843d.getVisibility() != 0) {
                this.f6843d.setVisibility(0);
                this.g.setVisibility(8);
                return;
            }
            return;
        }
        if (this.g.getVisibility() != 0) {
            this.g.setVisibility(0);
            this.f6843d.setVisibility(8);
        }
    }

    @Override // android.support.v4.app.v.a
    public android.support.v4.a.e<Cursor> a(int i, Bundle bundle) {
        com.roblox.client.util.g.b("rbx.contacts", "Creating the loader.");
        return new android.support.v4.a.d(getActivity(), com.roblox.client.contacts.a.f6780a, com.roblox.client.contacts.a.f6781b, "mimetype IN (?, ?, ?, ?) AND in_visible_group = ? AND display_name <> ? AND has_phone_number = ?", com.roblox.client.contacts.a.f6782c, "display_name ASC");
    }

    @Override // android.support.v4.app.v.a
    public void a(android.support.v4.a.e<Cursor> eVar, Cursor cursor) {
        if (!e()) {
            if (this.h == null || this.h.getItemCount() == 0) {
                com.roblox.client.util.g.b("rbx.contacts", "Contacts loaded.");
                this.i.a(cursor);
            }
        }
    }

    @Override // android.support.v4.app.v.a
    public void a(android.support.v4.a.e<Cursor> eVar) {
        com.roblox.client.util.g.b("rbx.contacts", "Loader reset.");
    }

    @Override // com.roblox.client.contacts.i.c
    public void b() {
        if (!e()) {
            com.roblox.client.util.g.b("rbx.contacts", "Unique contacts generated.");
            f();
        }
    }

    @Override // com.roblox.client.contacts.i.c
    public void c() {
        if (!e()) {
            com.roblox.client.util.g.b("rbx.contacts", "Roblox contacts fetched.");
            f();
        }
    }

    @Override // com.roblox.client.contacts.i.c
    public void d() {
        if (!e()) {
            g();
            a(true, R.string.Features_FriendFinder_Label_EmptyContactsBook);
            this.f6841b.d(5);
        }
    }

    @Override // com.roblox.client.contacts.i.c
    public void a(ArrayList<com.roblox.client.contacts.model.d> arrayList) {
        if (!e()) {
            com.roblox.client.util.g.b("rbx.contacts", "Roblox contacts merged. Total=" + arrayList.size());
            this.h = new c(arrayList, this);
            this.f6842c.setAdapter(this.h);
            this.h.notifyDataSetChanged();
            g();
            this.f6841b.d(2);
        }
    }

    @Override // com.roblox.client.contacts.i.c
    public void a(List<com.roblox.client.contacts.model.d> list) {
        if (!e()) {
            this.h.a(list);
        }
    }

    @Override // com.roblox.client.contacts.i.c
    public void a(int i) {
        if (!e()) {
            g();
            a(true, R.string.Features_FriendFinder_Response_NetworkError);
            this.f6841b.d(3);
        }
    }

    @Override // com.roblox.client.contacts.c.d
    public void a(com.roblox.client.contacts.model.d dVar) {
        if (!e()) {
            com.roblox.client.util.g.b("rbx.contacts", "Sending friend invite.");
            this.i.a(dVar);
        }
    }

    @Override // com.roblox.client.contacts.c.d
    public void b(com.roblox.client.contacts.model.d dVar) {
        if (!e()) {
            this.i.b(dVar);
            com.roblox.client.util.g.b("rbx.contacts", "Sending app invite.");
            c(dVar);
        }
    }

    @Override // com.roblox.client.l.a
    public void a(i.b bVar) {
        this.i = bVar;
    }

    @Override // com.roblox.client.l.a
    public void a(a.InterfaceC0114a interfaceC0114a) {
        this.j = interfaceC0114a;
    }

    @Override // com.roblox.client.l.a
    public void a(com.roblox.client.l.e eVar) {
        this.f7324a = eVar;
    }
}
