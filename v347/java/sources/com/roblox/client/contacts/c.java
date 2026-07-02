package com.roblox.client.contacts;

import android.support.v7.widget.RecyclerView;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Filter;
import android.widget.Filterable;
import com.d.a.t;
import com.roblox.client.R;
import com.roblox.client.components.RbxTextView;
import de.hdodenhof.circleimageview.CircleImageView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class c extends RecyclerView.Adapter<a> implements Filterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f6817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<com.roblox.client.contacts.model.d> f6818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<com.roblox.client.contacts.model.d> f6819c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private C0101c f6820d;

    interface d {
        void a(com.roblox.client.contacts.model.d dVar);

        void b(com.roblox.client.contacts.model.d dVar);
    }

    c(ArrayList<com.roblox.client.contacts.model.d> arrayList, d dVar) {
        this.f6818b = arrayList;
        this.f6819c = arrayList;
        this.f6817a = dVar;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 0:
                return new e(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.contacts_list_section_header, viewGroup, false), viewGroup.getContext().getString(R.string.Features_FriendFinder_Label_ContactsAlsoOnRoblox));
            case 1:
                return new f(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.contacts_roblox_list_item, viewGroup, false));
            case 2:
                return new e(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.contacts_list_section_header, viewGroup, false), viewGroup.getContext().getString(R.string.Features_FriendFinder_Label_OtherContacts));
            case 3:
                return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.contacts_list_item, viewGroup, false));
            default:
                return null;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(a aVar, int i) {
        aVar.a(this.f6819c.get(i), this.f6817a);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        com.roblox.client.contacts.model.d dVar = this.f6819c.get(i);
        if (-1 == dVar.a()) {
            return 2;
        }
        if (-2 == dVar.a()) {
            return 0;
        }
        return dVar.f() ? 1 : 3;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f6819c.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f6820d == null) {
            this.f6820d = new C0101c();
        }
        return this.f6820d;
    }

    public void a(List<com.roblox.client.contacts.model.d> list) {
        com.roblox.client.util.g.b("rbx.contacts", "updatedContacts:" + list.size());
        for (com.roblox.client.contacts.model.d dVar : list) {
            int iIndexOf = this.f6818b.indexOf(dVar);
            if (iIndexOf != -1) {
                this.f6818b.set(iIndexOf, dVar);
                notifyItemChanged(iIndexOf);
            }
        }
    }

    static abstract class a extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        CircleImageView f6821a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        RbxTextView f6822b;

        public abstract void a(com.roblox.client.contacts.model.d dVar, d dVar2);

        a(View view) {
            super(view);
        }

        void a(String str) {
            t.a(this.f6821a.getContext()).a(str).a(R.drawable.empty_contact_icon).a(this.f6821a);
        }
    }

    private static class f extends a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        RbxTextView f6829c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        RbxTextView f6830d;
        Button e;

        f(View view) {
            super(view);
            this.f6821a = (CircleImageView) view.findViewById(R.id.contacts_roblox_list_thumbnail_img_view);
            this.f6822b = (RbxTextView) view.findViewById(R.id.contacts_roblox_list_name_text_view);
            this.f6829c = (RbxTextView) view.findViewById(R.id.contacts_roblox_list_username_text_view);
            this.f6830d = (RbxTextView) view.findViewById(R.id.contacts_roblox_list_mutual_friends_text_view);
            this.e = (Button) view.findViewById(R.id.contacts_roblox_add_friend_button);
        }

        @Override // com.roblox.client.contacts.c.a
        public void a(final com.roblox.client.contacts.model.d dVar, final d dVar2) {
            if (TextUtils.isEmpty(dVar.c())) {
                this.f6821a.setImageResource(R.drawable.empty_contact_icon);
            } else {
                a(dVar.c());
            }
            this.f6822b.setText(dVar.b());
            a(dVar.j());
            this.f6829c.setText(dVar.e());
            this.f6830d.setText(this.f6830d.getContext().getString(R.string.Features_FriendFinder_Label_MutualFriends, String.valueOf(dVar.i())));
            this.e.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.contacts.c.f.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (!dVar.l()) {
                        dVar.k();
                        dVar2.a(dVar);
                        f.this.a(dVar.j());
                    }
                }
            });
        }

        @Override // com.roblox.client.contacts.c.a
        void a(String str) {
            t.a(this.f6821a.getContext()).a(str).a(R.drawable.empty_contact_icon).a(this.f6821a);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i) {
            switch (i) {
                case 1:
                    this.e.setText(R.string.Features_FriendFinder_Label_Added);
                    this.e.setBackgroundResource(R.drawable.rbx_drawable_flat_button_gray);
                    break;
                case 2:
                default:
                    this.e.setText(R.string.Features_FriendFinder_Action_Add);
                    this.e.setBackgroundResource(R.drawable.rbx_drawable_flat_button_blue);
                    break;
                case 3:
                    this.e.setText(R.string.Features_FriendFinder_Label_Friends);
                    this.e.setBackgroundResource(R.drawable.rbx_drawable_flat_button_gray);
                    break;
            }
        }
    }

    private static class b extends a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        RbxTextView f6823c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Button f6824d;

        b(View view) {
            super(view);
            this.f6821a = (CircleImageView) view.findViewById(R.id.contacts_list_thumbnail_img_view);
            this.f6822b = (RbxTextView) view.findViewById(R.id.contacts_list_name_text_view);
            this.f6823c = (RbxTextView) view.findViewById(R.id.contacts_list_sub_text_view);
            this.f6824d = (Button) view.findViewById(R.id.contacts_send_app_link_button);
        }

        @Override // com.roblox.client.contacts.c.a
        public void a(final com.roblox.client.contacts.model.d dVar, final d dVar2) {
            if (TextUtils.isEmpty(dVar.c())) {
                this.f6821a.setImageResource(R.drawable.empty_contact_icon);
            } else {
                a(dVar.c());
            }
            this.f6822b.setText(dVar.b());
            String strG = dVar.g();
            if (!TextUtils.isEmpty(strG)) {
                this.f6823c.setText(dVar.h() + ": " + PhoneNumberUtils.formatNumber(strG));
            }
            a(dVar.m());
            this.f6824d.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.contacts.c.b.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (!dVar.m()) {
                        dVar.n();
                        dVar2.b(dVar);
                        b.this.a(true);
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(boolean z) {
            if (z) {
                this.f6824d.setText(R.string.Features_FriendFinder_Label_Invited);
                this.f6824d.setBackgroundResource(R.drawable.rbx_drawable_flat_button_gray);
            } else {
                this.f6824d.setText(R.string.Features_FriendFinder_Action_Invite);
                this.f6824d.setBackgroundResource(R.drawable.rbx_drawable_flat_button_blue);
            }
        }
    }

    private static class e extends a {
        e(View view, String str) {
            super(view);
            ((RbxTextView) view.findViewById(R.id.contact_list_header_text_view)).setText(str);
        }

        @Override // com.roblox.client.contacts.c.a
        public void a(com.roblox.client.contacts.model.d dVar, d dVar2) {
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.contacts.c$c, reason: collision with other inner class name */
    private class C0101c extends Filter {
        private C0101c() {
        }

        @Override // android.widget.Filter
        protected Filter.FilterResults performFiltering(CharSequence charSequence) {
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (TextUtils.isEmpty(charSequence)) {
                filterResults.count = c.this.f6818b.size();
                filterResults.values = c.this.f6818b;
            } else {
                String lowerCase = charSequence.toString().toLowerCase();
                ArrayList arrayList = new ArrayList();
                for (com.roblox.client.contacts.model.d dVar : c.this.f6818b) {
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
            c.this.f6819c = (ArrayList) filterResults.values;
            c.this.notifyDataSetChanged();
        }
    }
}
