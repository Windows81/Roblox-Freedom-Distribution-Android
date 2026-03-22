package com.roblox.client.contacts;

import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.recyclerview.widget.RecyclerView;
import com.c.a.t;
import com.roblox.client.ae.k;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.o;
import de.hdodenhof.circleimageview.CircleImageView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class c extends RecyclerView.a<a> implements Filterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f5931a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<com.roblox.client.contacts.model.d> f5932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<com.roblox.client.contacts.model.d> f5933c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private C0132c f5934d;

    interface d {
        void a(com.roblox.client.contacts.model.d dVar);

        void b(com.roblox.client.contacts.model.d dVar);
    }

    c(ArrayList<com.roblox.client.contacts.model.d> arrayList, d dVar) {
        this.f5932b = arrayList;
        this.f5933c = arrayList;
        this.f5931a = dVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public a a(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new e(LayoutInflater.from(viewGroup.getContext()).inflate(o.g.contacts_list_section_header, viewGroup, false), viewGroup.getContext().getString(o.j.Features_FriendFinder_Label_ContactsAlsoOnRoblox));
        }
        if (i == 1) {
            return new f(LayoutInflater.from(viewGroup.getContext()).inflate(o.g.contacts_roblox_list_item, viewGroup, false));
        }
        if (i == 2) {
            return new e(LayoutInflater.from(viewGroup.getContext()).inflate(o.g.contacts_list_section_header, viewGroup, false), viewGroup.getContext().getString(o.j.Features_FriendFinder_Label_OtherContacts));
        }
        if (i != 3) {
            return null;
        }
        return new b(LayoutInflater.from(viewGroup.getContext()).inflate(o.g.contacts_list_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void a(a aVar, int i) {
        aVar.a(this.f5933c.get(i), this.f5931a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int a(int i) {
        com.roblox.client.contacts.model.d dVar = this.f5933c.get(i);
        if (-1 == dVar.a()) {
            return 2;
        }
        if (-2 == dVar.a()) {
            return 0;
        }
        return dVar.f() ? 1 : 3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int a() {
        return this.f5933c.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f5934d == null) {
            this.f5934d = new C0132c();
        }
        return this.f5934d;
    }

    public void a(List<com.roblox.client.contacts.model.d> list) {
        k.b("rbx.contacts", "updatedContacts:" + list.size());
        for (com.roblox.client.contacts.model.d dVar : list) {
            int iIndexOf = this.f5932b.indexOf(dVar);
            if (iIndexOf != -1) {
                this.f5932b.set(iIndexOf, dVar);
                c(iIndexOf);
            }
        }
    }

    static abstract class a extends RecyclerView.w {
        CircleImageView q;
        RbxTextView r;

        public abstract void a(com.roblox.client.contacts.model.d dVar, d dVar2);

        a(View view) {
            super(view);
        }

        void a(String str) {
            t.a(this.q.getContext()).a(str).a(o.e.empty_contact_icon).a(this.q);
        }
    }

    private static class f extends a {
        RbxTextView s;
        RbxTextView t;
        Button u;

        f(View view) {
            super(view);
            this.q = (CircleImageView) view.findViewById(o.f.contacts_roblox_list_thumbnail_img_view);
            this.r = (RbxTextView) view.findViewById(o.f.contacts_roblox_list_name_text_view);
            this.s = (RbxTextView) view.findViewById(o.f.contacts_roblox_list_username_text_view);
            this.t = (RbxTextView) view.findViewById(o.f.contacts_roblox_list_mutual_friends_text_view);
            this.u = (Button) view.findViewById(o.f.contacts_roblox_add_friend_button);
        }

        @Override // com.roblox.client.contacts.c.a
        public void a(final com.roblox.client.contacts.model.d dVar, final d dVar2) {
            if (TextUtils.isEmpty(dVar.c())) {
                this.q.setImageResource(o.e.empty_contact_icon);
            } else {
                a(dVar.c());
            }
            this.r.setText(dVar.b());
            c(dVar.j());
            this.s.setText(dVar.e());
            RbxTextView rbxTextView = this.t;
            rbxTextView.setText(rbxTextView.getContext().getString(o.j.Features_FriendFinder_Label_MutualFriends, String.valueOf(dVar.i())));
            this.u.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.contacts.c.f.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (dVar.l()) {
                        return;
                    }
                    dVar.k();
                    dVar2.a(dVar);
                    f.this.c(dVar.j());
                }
            });
        }

        @Override // com.roblox.client.contacts.c.a
        void a(String str) {
            t.a(this.q.getContext()).a(str).a(o.e.empty_contact_icon).a(this.q);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(int i) {
            if (i == 1) {
                this.u.setText(o.j.Features_FriendFinder_Label_Pending);
                this.u.setBackgroundResource(o.e.rbx_drawable_flat_button_gray);
            } else if (i == 3) {
                this.u.setText(o.j.Features_FriendFinder_Label_Friends);
                this.u.setBackgroundResource(o.e.rbx_drawable_flat_button_gray);
            } else {
                this.u.setText(o.j.Features_FriendFinder_Action_Add);
                this.u.setBackgroundResource(o.e.rbx_drawable_flat_button_blue);
            }
        }
    }

    private static class b extends a {
        RbxTextView s;
        Button t;

        b(View view) {
            super(view);
            this.q = (CircleImageView) view.findViewById(o.f.contacts_list_thumbnail_img_view);
            this.r = (RbxTextView) view.findViewById(o.f.contacts_list_name_text_view);
            this.s = (RbxTextView) view.findViewById(o.f.contacts_list_sub_text_view);
            this.t = (Button) view.findViewById(o.f.contacts_send_app_link_button);
        }

        @Override // com.roblox.client.contacts.c.a
        public void a(final com.roblox.client.contacts.model.d dVar, final d dVar2) {
            if (TextUtils.isEmpty(dVar.c())) {
                this.q.setImageResource(o.e.empty_contact_icon);
            } else {
                a(dVar.c());
            }
            this.r.setText(dVar.b());
            String strG = dVar.g();
            if (!TextUtils.isEmpty(strG)) {
                this.s.setText(dVar.h() + ": " + PhoneNumberUtils.formatNumber(strG));
            }
            b(dVar.m());
            this.t.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.contacts.c.b.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (dVar.m()) {
                        return;
                    }
                    dVar.n();
                    dVar2.b(dVar);
                    b.this.b(true);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(boolean z) {
            if (z) {
                this.t.setText(o.j.Features_FriendFinder_Label_Invited);
                this.t.setBackgroundResource(o.e.rbx_drawable_flat_button_gray);
            } else {
                this.t.setText(o.j.Features_FriendFinder_Action_Invite);
                this.t.setBackgroundResource(o.e.rbx_drawable_flat_button_blue);
            }
        }
    }

    private static class e extends a {
        @Override // com.roblox.client.contacts.c.a
        public void a(com.roblox.client.contacts.model.d dVar, d dVar2) {
        }

        e(View view, String str) {
            super(view);
            ((RbxTextView) view.findViewById(o.f.contact_list_header_text_view)).setText(str);
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.contacts.c$c, reason: collision with other inner class name */
    private class C0132c extends Filter {
        private C0132c() {
        }

        @Override // android.widget.Filter
        protected Filter.FilterResults performFiltering(CharSequence charSequence) {
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (TextUtils.isEmpty(charSequence)) {
                filterResults.count = c.this.f5932b.size();
                filterResults.values = c.this.f5932b;
            } else {
                String lowerCase = charSequence.toString().toLowerCase();
                ArrayList arrayList = new ArrayList();
                for (com.roblox.client.contacts.model.d dVar : c.this.f5932b) {
                    if (a(dVar) || dVar.b().toLowerCase().contains(lowerCase)) {
                        arrayList.add(dVar);
                    }
                }
                filterResults.count = arrayList.size();
                filterResults.values = arrayList;
            }
            return filterResults;
        }

        private boolean a(com.roblox.client.contacts.model.d dVar) {
            return -2 == dVar.a() || -1 == dVar.a();
        }

        @Override // android.widget.Filter
        protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            c.this.f5933c = (ArrayList) filterResults.values;
            c.this.c();
        }
    }
}
