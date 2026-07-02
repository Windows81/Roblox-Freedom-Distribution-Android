package com.roblox.client.k;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.roblox.client.ActivityNativeMain;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.components.p;
import com.roblox.client.e.w;
import com.roblox.client.feature.FeatureState;
import com.roblox.client.m;
import java.util.ArrayList;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ArrayList<g> f7280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected f f7281b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Toolbar f7282c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected com.roblox.client.j.c f7283d;

    protected interface g {
    }

    protected abstract ArrayList<g> a();

    protected abstract String b();

    /* JADX INFO: renamed from: com.roblox.client.k.c$c, reason: collision with other inner class name */
    protected class C0111c implements g {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f7287c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f7288d;
        public int e;
        public String f;

        public C0111c(int i, int i2, String str) {
            this.f7288d = i;
            this.e = i2;
            this.f = str;
        }

        public C0111c(String str, int i, String str2) {
            this.f7287c = str;
            this.e = i;
            this.f = str2;
        }

        public int a() {
            return 0;
        }

        public boolean c() {
            return a() > 0;
        }

        public void b() {
            if (!TextUtils.isEmpty(this.f)) {
                c.this.a(this.f);
            } else {
                com.roblox.client.util.g.c(c.this.b(), "FeatureOption has no valid feature name");
            }
        }
    }

    protected class h implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f7310a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f7311b;

        public h(c cVar) {
            this(true, true);
        }

        public h(boolean z, boolean z2) {
            this.f7310a = z;
            this.f7311b = z2;
        }
    }

    protected class d implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f7289a;

        public d(c cVar) {
            this(true);
        }

        public d(boolean z) {
            this.f7289a = z;
        }
    }

    protected class e extends C0111c {
        public e() {
            super(R.string.Application_Logout_Action_Logout, 0, (String) null);
        }

        @Override // com.roblox.client.k.c.C0111c
        public void b() {
            new com.roblox.client.j.b(c.this).b();
        }
    }

    protected class b extends C0111c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f7285a;

        public b() {
            super(R.string.CommonUI_Features_Label_Events, R.drawable.more_page_icon_events, "EVENTS_TAG");
            this.f7285a = true;
        }

        @Override // com.roblox.client.k.c.C0111c
        public int a() {
            return c.this.c();
        }

        @Override // com.roblox.client.k.c.C0111c
        public boolean c() {
            return this.f7285a && super.c();
        }

        @Override // com.roblox.client.k.c.C0111c
        public void b() {
            this.f7285a = false;
            super.b();
            c.this.a(this);
        }
    }

    protected class a extends C0111c {
        public a() {
            super(R.string.CommonUI_Features_Label_BuildersClub, R.drawable.more_page_icon_builders_club, (String) null);
        }

        @Override // com.roblox.client.k.c.C0111c
        public void b() {
            new com.roblox.client.j.a(c.this, "tabMore").a();
        }
    }

    protected class i implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f7313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f7314b;

        public i(String str, String str2) {
            this.f7313a = str;
            this.f7314b = str2;
        }
    }

    @Override // com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7280a = a();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_more, viewGroup, false);
        this.f7282c = (Toolbar) viewInflate.findViewById(R.id.toolbar);
        a(this.f7282c);
        a(this.f7282c.getMenu(), getActivity().getMenuInflater());
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.more_recycler);
        this.f7281b = new f(this.f7280a);
        recyclerView.setAdapter(this.f7281b);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        return viewInflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        d();
    }

    @j(a = ThreadMode.MAIN)
    public void onUnreadNotificationCountEvent(w wVar) {
        d();
    }

    protected void d() {
        if (this.f7283d != null) {
            this.f7283d.b();
        }
    }

    protected void a(g gVar) {
        this.f7281b.notifyItemChanged(this.f7280a.indexOf(gVar));
    }

    protected void a(Toolbar toolbar) {
        toolbar.setTitle(R.string.CommonUI_Features_Label_More);
        p.a(toolbar, getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c() {
        if (RobloxSettings.eventsData == null) {
            return 0;
        }
        try {
            JSONArray jSONArray = new JSONObject(RobloxSettings.eventsData).getJSONArray("Data");
            if (jSONArray != null) {
                return jSONArray.length();
            }
            return 0;
        } catch (JSONException e2) {
            com.roblox.client.util.g.d(b(), "getEventsCount() could not parse json");
            return 0;
        }
    }

    private void a(Menu menu, MenuInflater menuInflater) {
        new com.roblox.client.j.d(this, "tabMore").a(menu, menuInflater);
        this.f7283d = new com.roblox.client.j.c(this);
        this.f7283d.a(menu, menuInflater);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (str.equals("CREATE_GAMES_TAG")) {
            SharedPreferences sharedPreferencesA = com.roblox.client.util.m.a(getContext()).a("MORE_MENU_PREFS");
            if (!sharedPreferencesA.getBoolean("PREF_CREATE_GAMES_NEW_LABEL_SHOWN", false)) {
                SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
                editorEdit.putBoolean("PREF_CREATE_GAMES_NEW_LABEL_SHOWN", true);
                editorEdit.apply();
                this.f7281b.notifyDataSetChanged();
            }
        }
        android.support.v4.app.h activity = getActivity();
        if (activity instanceof ActivityNativeMain) {
            ((ActivityNativeMain) activity).b(new FeatureState(str));
        }
    }

    public class f extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f7293b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f7294c = 1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f7295d = 2;
        private final int e = 3;
        private final int f = 4;
        private ArrayList<g> g;

        public f(ArrayList<g> arrayList) {
            this.g = arrayList;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            g gVar = this.g.get(i);
            if (gVar instanceof e) {
                return 2;
            }
            if (gVar instanceof d) {
                return 1;
            }
            if (gVar instanceof C0111c) {
                return 3;
            }
            if (gVar instanceof i) {
                return 4;
            }
            return 0;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            switch (i) {
                case 1:
                    return new C0112c(a(viewGroup, R.layout.more_separator_line, 1));
                case 2:
                    return new d(a(viewGroup, R.layout.more_option_centered, 45));
                case 3:
                    return new b(a(viewGroup, R.layout.more_square, -2));
                case 4:
                    return new C0113f(a(viewGroup, R.layout.more_label, -2));
                default:
                    return new e(a(viewGroup, R.layout.more_separator, 30));
            }
        }

        private View a(ViewGroup viewGroup, int i, int i2) {
            View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(i, (ViewGroup) null);
            if (i2 != -2 || i2 != -1) {
                i2 = (int) com.roblox.client.p.a(c.this.getContext(), i2);
            }
            viewInflate.setLayoutParams(new ViewGroup.LayoutParams(-1, i2));
            return viewInflate;
        }

        private Boolean a(String str) {
            boolean z = false;
            SharedPreferences sharedPreferencesA = com.roblox.client.util.m.a(c.this.getContext()).a("MORE_MENU_PREFS");
            if ("CREATE_GAMES_TAG".equals(str) && !sharedPreferencesA.getBoolean("PREF_CREATE_GAMES_NEW_LABEL_SHOWN", false)) {
                z = true;
            }
            return Boolean.valueOf(z);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            g gVar = this.g.get(i);
            int itemViewType = getItemViewType(i);
            if (itemViewType == 3) {
                b bVar = (b) viewHolder;
                C0111c c0111c = (C0111c) gVar;
                if (c0111c.f7287c != null) {
                    bVar.f7297b.setText(c0111c.f7287c);
                } else {
                    bVar.f7297b.setText(c0111c.f7288d);
                }
                if (c0111c.e == 0) {
                    bVar.f7298c.setVisibility(8);
                } else {
                    bVar.f7298c.setImageResource(c0111c.e);
                    bVar.f7298c.setVisibility(0);
                }
                if (c0111c.c()) {
                    bVar.f7299d.setText(Integer.toString(c0111c.a()));
                    bVar.f7299d.setVisibility(0);
                } else if (a(c0111c.f).booleanValue()) {
                    bVar.f7299d.setText(c.this.getString(R.string.CommonUI_Features_Label_New));
                    bVar.f7299d.setVisibility(0);
                } else {
                    bVar.f7299d.setVisibility(8);
                }
                bVar.a(c0111c);
                return;
            }
            if (itemViewType == 2) {
                d dVar = (d) viewHolder;
                e eVar = (e) gVar;
                if (eVar.f7287c != null) {
                    dVar.f7302b.setText(eVar.f7287c);
                } else {
                    dVar.f7302b.setText(eVar.f7288d);
                }
                dVar.a(eVar);
                return;
            }
            if (itemViewType == 1) {
                ((C0112c) viewHolder).f7300a.setVisibility(((d) gVar).f7289a ? 0 : 8);
                return;
            }
            if (itemViewType == 0) {
                e eVar2 = (e) viewHolder;
                h hVar = (h) gVar;
                eVar2.f7304a.setVisibility(hVar.f7310a ? 0 : 4);
                eVar2.f7305b.setVisibility(hVar.f7311b ? 0 : 4);
                return;
            }
            if (itemViewType == 4) {
                C0113f c0113f = (C0113f) viewHolder;
                i iVar = (i) gVar;
                c0113f.f7307a.setText(iVar.f7313a);
                c0113f.f7308b.setText(iVar.f7314b);
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.g.size();
        }

        class e extends RecyclerView.ViewHolder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public View f7304a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public View f7305b;

            public e(View view) {
                super(view);
                this.f7304a = view.findViewById(R.id.top_divider);
                this.f7305b = view.findViewById(R.id.bottom_divider);
            }
        }

        /* JADX INFO: renamed from: com.roblox.client.k.c$f$c, reason: collision with other inner class name */
        class C0112c extends RecyclerView.ViewHolder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public View f7300a;

            public C0112c(View view) {
                super(view);
                this.f7300a = view.findViewById(R.id.imagePadding);
            }
        }

        /* JADX INFO: renamed from: com.roblox.client.k.c$f$f, reason: collision with other inner class name */
        class C0113f extends RecyclerView.ViewHolder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public TextView f7307a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public TextView f7308b;

            public C0113f(View view) {
                super(view);
                this.f7307a = (TextView) view.findViewById(R.id.version_txt);
                this.f7308b = (TextView) view.findViewById(R.id.site_txt);
            }
        }

        class d extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public TextView f7302b;

            public d(View view) {
                super(view);
                this.f7302b = (TextView) view.findViewById(R.id.text);
            }
        }

        class b extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public TextView f7297b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public ImageView f7298c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public TextView f7299d;

            public b(View view) {
                super(view);
                this.f7297b = (TextView) view.findViewById(R.id.textview_more_square);
                this.f7298c = (ImageView) view.findViewById(R.id.imageview_more_square);
                this.f7299d = (TextView) view.findViewById(R.id.textview_more_square_notification);
            }
        }

        class a extends RecyclerView.ViewHolder implements View.OnClickListener {
            public a(View view) {
                super(view);
                View viewFindViewById = view.findViewById(R.id.more_square_click_frame);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(this);
                } else {
                    view.setOnClickListener(this);
                }
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a().b();
            }

            public C0111c a() {
                return (C0111c) this.itemView.getTag(R.id.more_option_tag);
            }

            public void a(C0111c c0111c) {
                this.itemView.setTag(R.id.more_option_tag, c0111c);
            }
        }
    }
}
