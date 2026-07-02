package com.roblox.client.chat;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.ac;
import com.d.a.t;
import com.roblox.client.R;
import com.roblox.client.chat.a.n;
import com.roblox.client.util.f;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class c extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f6533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<com.roblox.client.chat.a.m> f6534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<com.roblox.client.chat.a.m> f6535c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HashSet<Long> f6536d;
    private String e;
    private boolean f;
    private boolean g;
    private View.OnClickListener h;
    private ac i;

    public c(Context context) {
        this(context, false, false, null);
    }

    public c(Context context, boolean z, boolean z2, View.OnClickListener onClickListener) {
        this.f6533a = context;
        this.f = z;
        this.g = z2;
        this.h = onClickListener;
        this.i = new f.a();
        this.f6535c = new ArrayList<>();
    }

    public void a(ArrayList<com.roblox.client.chat.a.m> arrayList) {
        this.f6534b = arrayList;
    }

    public void a(ArrayList<com.roblox.client.chat.a.m> arrayList, boolean z) {
        if (this.f6536d == null) {
            this.f6536d = new HashSet<>();
        } else {
            this.f6536d.clear();
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        if (arrayList2 != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < arrayList2.size()) {
                    if (!z || ((com.roblox.client.chat.a.m) arrayList2.get(i2)).a() != com.roblox.client.i.h.a().b()) {
                        this.f6536d.add(Long.valueOf(((com.roblox.client.chat.a.m) arrayList2.get(i2)).a()));
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void a(String str) {
        this.e = str.toLowerCase();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        int i = 0;
        boolean zB = b();
        boolean z = (this.f6536d == null || this.f6536d.isEmpty()) ? false : true;
        if (z || zB) {
            this.f6535c.clear();
            ArrayList arrayList = (ArrayList) this.f6534b.clone();
            while (true) {
                int i2 = i;
                if (i2 >= arrayList.size()) {
                    break;
                }
                com.roblox.client.chat.a.m mVar = (com.roblox.client.chat.a.m) arrayList.get(i2);
                if (z) {
                    if (!this.f6536d.contains(Long.valueOf(mVar.a())) && (!zB || mVar.b().toLowerCase().contains(this.e))) {
                        this.f6535c.add(mVar);
                    }
                } else if (zB && mVar.b().toLowerCase().contains(this.e)) {
                    this.f6535c.add(mVar);
                }
                i = i2 + 1;
            }
        }
        super.notifyDataSetChanged();
    }

    private boolean b() {
        return (this.e == null || this.e.isEmpty()) ? false : true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        boolean zB = b();
        if ((this.f6536d == null || this.f6536d.isEmpty()) && !zB) {
            if (this.f6534b != null) {
                return this.f6534b.size();
            }
            return 0;
        }
        if (this.f6535c != null) {
            return this.f6535c.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.roblox.client.chat.a.m getItem(int i) {
        boolean zB = b();
        if ((this.f6536d == null || this.f6536d.isEmpty()) && !zB) {
            if (this.f6534b != null) {
                return this.f6534b.get(i);
            }
            return null;
        }
        if (this.f6535c != null) {
            return this.f6535c.get(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    private class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f6537a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ImageView f6538b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImageView f6539c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f6540d;
        public View e;
        public ImageView f;
        public ImageView g;
        public TextView h;
        public TextView i;

        private a() {
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.f6533a).inflate(R.layout.chat_contact_artifact_list_item, viewGroup, false);
            a aVar = new a();
            aVar.f6537a = view;
            aVar.f6538b = (ImageView) view.findViewById(R.id.contact_thumbnail);
            aVar.f6539c = (ImageView) view.findViewById(R.id.contact_thumbnail_checked);
            aVar.f6540d = view.findViewById(R.id.online_status);
            aVar.e = view.findViewById(R.id.online_status_ring);
            aVar.h = (TextView) view.findViewById(R.id.contact_name);
            aVar.i = (TextView) view.findViewById(R.id.contact_subtext);
            aVar.f = (ImageView) view.findViewById(R.id.contact_remove);
            aVar.g = (ImageView) view.findViewById(R.id.contact_report);
            view.setTag(aVar);
            if (this.f) {
                aVar.i.setVisibility(4);
            }
        }
        a aVar2 = (a) view.getTag();
        com.roblox.client.chat.a.m mVarA = n.a().a(getItem(i).a());
        aVar2.h.setText(mVarA.b());
        if (a(mVarA)) {
            aVar2.f6539c.setVisibility(0);
            aVar2.f6539c.setBackgroundResource(R.drawable.circle_shape_gray);
            aVar2.f6538b.setVisibility(4);
        } else {
            aVar2.f6539c.setVisibility(4);
            aVar2.f6538b.setVisibility(0);
            if (!mVarA.d().isEmpty()) {
                a(aVar2.f6538b, mVarA.d());
            } else {
                aVar2.f6538b.setImageResource(R.drawable.ic_avatar_placement);
            }
        }
        a(n.a().b(mVarA.a()), aVar2);
        if (this.f) {
            if (this.h != null) {
                aVar2.f.setTag(R.id.contact_id_tag, Long.valueOf(mVarA.a()));
                aVar2.f.setOnClickListener(this.h);
                aVar2.g.setTag(R.id.contact_id_tag, Long.valueOf(mVarA.a()));
                aVar2.g.setOnClickListener(this.h);
            }
            if (mVarA.a() == com.roblox.client.i.h.a().b()) {
                aVar2.f.setVisibility(8);
                aVar2.g.setVisibility(8);
            } else if (this.g) {
                aVar2.f.setImageResource(R.drawable.icon_remove_selector);
                aVar2.f.setVisibility(0);
                aVar2.g.setVisibility(0);
            } else {
                aVar2.f.setVisibility(8);
                aVar2.g.setVisibility(0);
            }
        } else {
            aVar2.f.setVisibility(8);
            aVar2.g.setVisibility(8);
        }
        return view;
    }

    public boolean a(com.roblox.client.chat.a.m mVar) {
        if (this.f6536d == null || this.f6536d.isEmpty()) {
            return false;
        }
        return this.f6536d.contains(Long.valueOf(mVar.a()));
    }

    public int a() {
        if (this.f6536d == null) {
            return 0;
        }
        return this.f6536d.size();
    }

    private void a(ImageView imageView, String str) {
        t.a(this.f6533a).a(str).a(this.i).a(R.drawable.ic_avatar_placement).a(imageView);
    }

    private void a(int i, a aVar) {
        switch (i) {
            case -1:
            case 0:
                aVar.f6540d.setVisibility(8);
                aVar.e.setVisibility(8);
                aVar.i.setText(R.string.Feature_Chat_Label_Offline);
                break;
            case 1:
                aVar.f6540d.setBackgroundResource(R.drawable.circle_shape_blue);
                aVar.f6540d.setVisibility(0);
                aVar.e.setVisibility(0);
                aVar.i.setText(R.string.Feature_Chat_Label_Online);
                break;
            case 2:
                aVar.f6540d.setBackgroundResource(R.drawable.circle_shape_green);
                aVar.f6540d.setVisibility(0);
                aVar.e.setVisibility(0);
                aVar.i.setText(R.string.Feature_Chat_Label_InGame);
                break;
            case 3:
                aVar.f6540d.setBackgroundResource(R.drawable.circle_shape_orange);
                aVar.f6540d.setVisibility(0);
                aVar.e.setVisibility(0);
                aVar.i.setText(R.string.Feature_Chat_Label_InStudio);
                break;
        }
    }
}
