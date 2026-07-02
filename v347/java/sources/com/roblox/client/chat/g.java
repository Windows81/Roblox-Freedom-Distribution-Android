package com.roblox.client.chat;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.d.a.ac;
import com.d.a.t;
import com.roblox.client.R;
import com.roblox.client.chat.a.n;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class g extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f6606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<com.roblox.client.chat.a.f> f6607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6608c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6609d;
    private int e;
    private String g;
    private a[] h = new a[7];
    private ArrayList<com.roblox.client.chat.a.f> f = new ArrayList<>();

    public g(Context context) {
        this.f6606a = context;
        this.f6608c = context.getResources().getColor(R.color.chatListSelection);
        this.f6609d = context.getResources().getColor(R.color.black);
        this.e = context.getResources().getColor(R.color.chatSubText);
    }

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f6612a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ImageView f6613b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f6614c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f6615d;
        public ImageView e;
        public ImageView f;
        public ImageView g;
        public ImageView h;
        public ImageView i;
        public ImageView j;
        public View k;
        public View l;

        private b() {
        }
    }

    public void a(ArrayList<com.roblox.client.chat.a.f> arrayList) {
        this.f6607b = arrayList;
    }

    public void a(String str) {
        this.g = str.toLowerCase();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        this.f.clear();
        if (a() && this.f6607b != null && this.f6607b.size() > 0) {
            ArrayList arrayList = (ArrayList) this.f6607b.clone();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= arrayList.size()) {
                    break;
                }
                com.roblox.client.chat.a.f fVar = (com.roblox.client.chat.a.f) arrayList.get(i2);
                String strA = a(fVar);
                if (strA != null && strA.toLowerCase().contains(this.g)) {
                    this.f.add(fVar);
                }
                i = i2 + 1;
            }
        }
        super.notifyDataSetChanged();
    }

    private String a(com.roblox.client.chat.a.f fVar) {
        if (fVar instanceof com.roblox.client.chat.a.d) {
            return ((com.roblox.client.chat.a.d) fVar).b();
        }
        if (fVar instanceof com.roblox.client.chat.a.m) {
            return ((com.roblox.client.chat.a.m) fVar).b();
        }
        return null;
    }

    private boolean a() {
        return (this.g == null || this.g.isEmpty()) ? false : true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (a()) {
            if (this.f != null) {
                return this.f.size();
            }
            return 0;
        }
        if (this.f6607b != null) {
            return this.f6607b.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (a()) {
            if (this.f != null) {
                return this.f.get(i);
            }
            return null;
        }
        if (this.f6607b != null) {
            return this.f6607b.get(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return getItem(i) instanceof com.roblox.client.chat.a.d ? 0 : 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.f6606a).inflate(R.layout.chat_conversation_artifact_list_item, viewGroup, false);
            b bVar = new b();
            bVar.f6612a = view;
            bVar.f6613b = (ImageView) view.findViewById(R.id.converse_thumbnail);
            bVar.f6614c = (TextView) view.findViewById(R.id.converse_title);
            bVar.f6615d = (TextView) view.findViewById(R.id.converse_subtext);
            bVar.e = (ImageView) view.findViewById(R.id.converse_thumbnail_left);
            bVar.f = (ImageView) view.findViewById(R.id.converse_thumbnail_right);
            bVar.g = (ImageView) view.findViewById(R.id.converse_thumbnail_left_top);
            bVar.h = (ImageView) view.findViewById(R.id.converse_thumbnail_left_bottom);
            bVar.i = (ImageView) view.findViewById(R.id.converse_thumbnail_right_top);
            bVar.j = (ImageView) view.findViewById(R.id.converse_thumbnail_right_bottom);
            bVar.k = view.findViewById(R.id.online_status);
            bVar.l = view.findViewById(R.id.online_status_ring);
            view.setTag(bVar);
        }
        b bVar2 = (b) view.getTag();
        if (getItemViewType(i) == 1) {
            a(bVar2, (com.roblox.client.chat.a.m) getItem(i));
        } else {
            a(bVar2, (com.roblox.client.chat.a.d) getItem(i));
        }
        if (viewGroup instanceof ListView) {
            if (((ListView) viewGroup).getChoiceMode() == 1 && i == ((ListView) viewGroup).getCheckedItemPosition()) {
                bVar2.f6612a.setBackgroundColor(this.f6608c);
            } else {
                bVar2.f6612a.setBackgroundDrawable(null);
            }
        }
        return view;
    }

    private void a(b bVar, com.roblox.client.chat.a.m mVar) {
        a(bVar, mVar.b(), n.a().d(mVar.a()), true);
        b(bVar, mVar);
    }

    private void a(b bVar, com.roblox.client.chat.a.d dVar) {
        String strI;
        String strB = dVar.b();
        com.roblox.client.chat.a.h hVarD = com.roblox.client.chat.a.a.a().d(dVar.c());
        if (hVarD == null || !com.roblox.client.chat.a.h.a().contains(hVarD.m())) {
            strI = "";
        } else {
            strI = hVarD.i();
        }
        boolean z = hVarD != null && hVarD.k();
        boolean zEquals = "OneToOneConversation".equals(dVar.i());
        ArrayList<com.roblox.client.chat.a.m> arrayListD = dVar.d();
        a(bVar, strB, strI, z);
        a(bVar, zEquals, arrayListD);
    }

    private void a(b bVar, String str, String str2, boolean z) {
        bVar.f6614c.setText(str);
        if (!z) {
            SpannableString spannableString = new SpannableString(str2);
            spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 0);
            bVar.f6615d.setText(spannableString);
            bVar.f6615d.setTextColor(this.f6609d);
            return;
        }
        bVar.f6615d.setText(str2);
        bVar.f6615d.setTextColor(this.e);
    }

    private void a(b bVar, boolean z, ArrayList<com.roblox.client.chat.a.m> arrayList) {
        if (z) {
            com.roblox.client.chat.a.m mVarA = null;
            if (arrayList.size() >= 2) {
                if (arrayList.get(0).a() != com.roblox.client.i.h.a().b()) {
                    mVarA = a(arrayList.get(0));
                } else {
                    mVarA = a(arrayList.get(1));
                }
            } else if (arrayList.size() == 1) {
                mVarA = a(arrayList.get(0));
            }
            a(mVarA, bVar);
            a(n.a().b(mVarA.a()), bVar);
            return;
        }
        ArrayList arrayList2 = new ArrayList(3);
        for (int i = 0; i < arrayList.size(); i++) {
            com.roblox.client.chat.a.m mVar = arrayList.get(i);
            if (i < 4) {
                arrayList2.add(a(mVar));
            }
        }
        if (arrayList2.size() == 1) {
            a((com.roblox.client.chat.a.m) arrayList2.get(0), bVar);
        } else if (arrayList2.size() == 2) {
            a((com.roblox.client.chat.a.m) arrayList2.get(0), (com.roblox.client.chat.a.m) arrayList2.get(1), bVar);
        } else if (arrayList2.size() == 3) {
            a((com.roblox.client.chat.a.m) arrayList2.get(0), (com.roblox.client.chat.a.m) arrayList2.get(1), (com.roblox.client.chat.a.m) arrayList2.get(2), bVar);
        } else if (arrayList2.size() > 3) {
            a((com.roblox.client.chat.a.m) arrayList2.get(0), (com.roblox.client.chat.a.m) arrayList2.get(1), (com.roblox.client.chat.a.m) arrayList2.get(2), (com.roblox.client.chat.a.m) arrayList2.get(3), bVar);
        }
        a(-1, bVar);
    }

    private void b(b bVar, com.roblox.client.chat.a.m mVar) {
        com.roblox.client.chat.a.m mVarA = a(mVar);
        a(mVarA, bVar);
        a(n.a().b(mVarA.a()), bVar);
    }

    private com.roblox.client.chat.a.m a(com.roblox.client.chat.a.m mVar) {
        if (mVar == null) {
            return null;
        }
        com.roblox.client.chat.a.m mVarA = n.a().a(mVar.a());
        return (mVarA == null || mVarA.d().isEmpty()) ? mVar : mVarA;
    }

    private void a(com.roblox.client.chat.a.m mVar, b bVar) {
        a(mVar, null, null, null, null, null, null, bVar);
    }

    private void a(com.roblox.client.chat.a.m mVar, com.roblox.client.chat.a.m mVar2, b bVar) {
        a(null, mVar, mVar2, null, null, null, null, bVar);
    }

    private void a(com.roblox.client.chat.a.m mVar, com.roblox.client.chat.a.m mVar2, com.roblox.client.chat.a.m mVar3, b bVar) {
        a(null, mVar, null, null, null, mVar2, mVar3, bVar);
    }

    private void a(com.roblox.client.chat.a.m mVar, com.roblox.client.chat.a.m mVar2, com.roblox.client.chat.a.m mVar3, com.roblox.client.chat.a.m mVar4, b bVar) {
        a(null, null, null, mVar, mVar2, mVar3, mVar4, bVar);
    }

    private void a(com.roblox.client.chat.a.m mVar, com.roblox.client.chat.a.m mVar2, com.roblox.client.chat.a.m mVar3, com.roblox.client.chat.a.m mVar4, com.roblox.client.chat.a.m mVar5, com.roblox.client.chat.a.m mVar6, com.roblox.client.chat.a.m mVar7, b bVar) {
        a(mVar, bVar.f6613b, 0);
        a(mVar2, bVar.e, 1);
        a(mVar3, bVar.f, 2);
        a(mVar4, bVar.g, 3);
        a(mVar5, bVar.h, 4);
        a(mVar6, bVar.i, 5);
        a(mVar7, bVar.j, 6);
    }

    private void a(com.roblox.client.chat.a.m mVar, ImageView imageView, int i) {
        if (mVar == null) {
            imageView.setVisibility(4);
        } else if (!mVar.d().isEmpty()) {
            t.a(this.f6606a).a(mVar.d()).a(a(i)).a(R.drawable.ic_avatar_placement).a(imageView);
            imageView.setVisibility(0);
        } else {
            imageView.setImageResource(R.drawable.ic_avatar_placement);
            imageView.setVisibility(0);
        }
    }

    private a a(int i) {
        if (this.h[i] == null) {
            this.h[i] = new a(i);
        }
        return this.h[i];
    }

    private void a(int i, b bVar) {
        switch (i) {
            case -1:
            case 0:
                bVar.k.setVisibility(8);
                bVar.l.setVisibility(8);
                break;
            case 1:
                bVar.k.setBackgroundResource(R.drawable.circle_shape_blue);
                bVar.k.setVisibility(0);
                bVar.l.setVisibility(0);
                break;
            case 2:
                bVar.k.setBackgroundResource(R.drawable.circle_shape_green);
                bVar.k.setVisibility(0);
                bVar.l.setVisibility(0);
                break;
            case 3:
                bVar.k.setBackgroundResource(R.drawable.circle_shape_orange);
                bVar.k.setVisibility(0);
                bVar.l.setVisibility(0);
                break;
        }
    }

    public class a implements ac {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f6611b;

        public a(int i) {
            this.f6611b = i;
        }

        @Override // com.d.a.ac
        public Bitmap a(Bitmap bitmap) {
            return com.roblox.client.util.f.a(bitmap, this.f6611b);
        }

        @Override // com.d.a.ac
        public String a() {
            return "CircularBitmapImage:" + this.f6611b;
        }
    }
}
