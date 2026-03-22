package com.roblox.client.phonenumber;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.databinding.f;
import androidx.recyclerview.widget.RecyclerView;
import com.roblox.client.ae.k;
import com.roblox.client.h.c;
import com.roblox.client.o;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends RecyclerView.a<com.roblox.client.friends.nearby.a.b.b<c>> implements Filterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f6636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private C0164b f6637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<PhonePrefix> f6638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<PhonePrefix> f6639d = new ArrayList();

    public interface a {
        void a(PhonePrefix phonePrefix);
    }

    public b(a aVar) {
        this.f6636a = aVar;
    }

    public void a(List<PhonePrefix> list) {
        this.f6639d = list;
        this.f6638c = list;
        c();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f6637b == null) {
            this.f6637b = new C0164b();
        }
        return this.f6637b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.roblox.client.friends.nearby.a.b.b<c> a(ViewGroup viewGroup, int i) {
        return new com.roblox.client.friends.nearby.a.b.b<>(a(viewGroup));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void a(com.roblox.client.friends.nearby.a.b.b<c> bVar, int i) {
        ((c) bVar.q).a(this.f6639d.get(i));
        ((c) bVar.q).a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int a() {
        return this.f6639d.size();
    }

    private c a(ViewGroup viewGroup) {
        final c cVar = (c) f.a(LayoutInflater.from(viewGroup.getContext()), o.g.phone_prefix_item, viewGroup, false);
        cVar.d().setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.phonenumber.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhonePrefix phonePrefixH = cVar.h();
                if (phonePrefixH == null || b.this.f6636a == null) {
                    return;
                }
                b.this.f6636a.a(phonePrefixH);
            }
        });
        return cVar;
    }

    /* JADX INFO: renamed from: com.roblox.client.phonenumber.b$b, reason: collision with other inner class name */
    private class C0164b extends Filter {
        private C0164b() {
        }

        @Override // android.widget.Filter
        protected Filter.FilterResults performFiltering(CharSequence charSequence) {
            k.c("PhonePrefixFilter", "performFiltering with: " + ((Object) charSequence));
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (TextUtils.isEmpty(charSequence)) {
                filterResults.count = b.this.f6638c.size();
                filterResults.values = b.this.f6638c;
            } else {
                String lowerCase = charSequence.toString().toLowerCase();
                ArrayList arrayList = new ArrayList();
                for (PhonePrefix phonePrefix : b.this.f6638c) {
                    if (phonePrefix.localizedCountryName.toLowerCase().contains(lowerCase)) {
                        arrayList.add(phonePrefix);
                    }
                }
                filterResults.count = arrayList.size();
                filterResults.values = arrayList;
            }
            return filterResults;
        }

        @Override // android.widget.Filter
        protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            k.c("PhonePrefixFilter", "publishResults for: " + ((Object) charSequence));
            b.this.f6639d = (ArrayList) filterResults.values;
            b.this.c();
        }
    }
}
