package com.roblox.client.chat;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.roblox.client.ActivityNativeMain;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.chat.ConversationActivity;
import com.roblox.client.chat.a.n;
import com.roblox.client.components.p;
import com.roblox.client.e.u;
import com.roblox.client.e.v;
import com.roblox.client.e.w;
import com.roblox.client.e.z;
import com.roblox.client.h.d;
import com.roblox.client.h.j;
import com.roblox.client.h.o;
import com.roblox.client.h.r;
import com.roblox.client.j.e;
import com.roblox.client.realtime.RealtimeService;
import java.util.ArrayList;
import java.util.HashSet;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class h extends Fragment implements SwipeRefreshLayout.b, Toolbar.OnMenuItemClickListener, View.OnClickListener, AdapterView.OnItemClickListener, com.roblox.client.components.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.roblox.client.j.c f6616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Toolbar f6617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f6618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SwipeRefreshLayout f6619d;
    private TextView e;
    private FrameLayout f;
    private FrameLayout g;
    private ListView h;
    private View i;
    private View j;
    private ArrayList<com.roblox.client.chat.a.f> k;
    private a l;
    private com.roblox.client.components.c q;
    private View r;
    private k s;
    private final int m = 30;
    private String n = null;
    private String o = null;
    private long p = -1;
    private o.a t = new o.a() { // from class: com.roblox.client.chat.h.1
        @Override // com.roblox.client.h.o.a
        public void a(boolean z, com.roblox.client.e.l lVar) {
            if (z && lVar.a() > 0) {
                h.this.f();
            }
        }
    };

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.k = new ArrayList<>();
        this.l = new a();
        n.a().a(new com.roblox.client.chat.a.m(com.roblox.client.i.h.a().b(), com.roblox.client.q.d.a().f()));
        com.roblox.client.i.g.a().a(new com.roblox.client.h.m(com.roblox.client.i.h.a().b()));
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.p = arguments.getLong("START_CONVERSATION_ID_EXTRA", -1L);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_chat_feature, viewGroup, false);
        this.f = (FrameLayout) viewInflate.findViewById(R.id.main_panel);
        this.g = (FrameLayout) viewInflate.findViewById(R.id.second_panel);
        View viewInflate2 = layoutInflater.inflate(R.layout.fragment_conversations_list, (ViewGroup) this.f, false);
        this.f.addView(viewInflate2);
        this.i = viewInflate2.findViewById(R.id.connecting_banner);
        this.e = (TextView) viewInflate.findViewById(R.id.create_group_button);
        this.e.setOnClickListener(this);
        this.j = viewInflate.findViewById(R.id.chat_list_empty);
        this.r = viewInflate.findViewById(R.id.chat_list_loading);
        this.h = (ListView) viewInflate.findViewById(R.id.list);
        if (this.g != null) {
            this.h.setChoiceMode(1);
        }
        this.f6619d = (SwipeRefreshLayout) viewInflate.findViewById(R.id.swipeContainer);
        this.f6619d.setOnRefreshListener(this);
        this.f6617b = (Toolbar) viewInflate.findViewById(R.id.toolbar_chatlist);
        this.f6617b.setTitle(R.string.CommonUI_Features_Label_Chat);
        p.a(this.f6617b, getContext());
        this.f6617b.setOnMenuItemClickListener(this);
        this.f6617b.inflateMenu(R.menu.chat_list_menu);
        this.f6617b.getMenu().findItem(R.id.menu_create_group).setIcon(p.a(getContext(), R.drawable.icon_create_group_off, R.drawable.icon_create_group_on));
        Menu menu = this.f6617b.getMenu();
        MenuInflater menuInflater = getActivity().getMenuInflater();
        final String string = getString(R.string.Search_GlobalSearch_Label_SearchWord);
        com.roblox.client.j.e eVar = new com.roblox.client.j.e(this);
        eVar.a(new e.a() { // from class: com.roblox.client.chat.h.2
            @Override // com.roblox.client.j.e.a
            public String a() {
                return string;
            }

            @Override // com.roblox.client.j.e.a
            public int b() {
                return 6;
            }

            @Override // com.roblox.client.j.e.a
            public boolean a(SearchView searchView, String str) {
                com.roblox.client.p.a((Activity) h.this.getActivity());
                return true;
            }

            @Override // com.roblox.client.j.e.a
            public boolean a(String str) {
                h.this.a(str);
                return false;
            }
        });
        eVar.a(menu, menuInflater);
        if (RobloxSettings.isPhone()) {
            a(menu, menuInflater);
        }
        this.q = new com.roblox.client.components.c(getContext(), viewInflate, 400, R.color.RbxGray3, R.color.RbxBlue2, null, null, Integer.valueOf(R.dimen.loadingSquareSize), Integer.valueOf(R.dimen.loadingSquareExpandSize));
        return viewInflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f6618c = new g(getActivity());
        this.f6618c.a(this.k);
        this.h.setAdapter((ListAdapter) this.f6618c);
        this.h.setOnItemClickListener(this);
        b();
        this.f6619d.setRefreshing(true);
        if (this.p != -1) {
            b(this.p);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        org.greenrobot.eventbus.c.a().a(this);
        this.h.setOnScrollListener(this.l);
        this.i.setVisibility(RealtimeService.a() ? 8 : 0);
        f();
        this.s = null;
        com.roblox.client.i.b("chatlist");
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.q.a();
        l();
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        this.q.b();
    }

    @Override // android.support.v4.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            this.q.b();
        } else {
            this.q.a();
            l();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        org.greenrobot.eventbus.c.a().b(this);
        super.onStop();
    }

    @Override // android.support.v4.widget.SwipeRefreshLayout.b
    public void a() {
        b();
        j();
        com.roblox.client.i.g.a().a(new r());
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.h.setItemChecked(i, true);
        this.f6618c.notifyDataSetChanged();
        if (this.f6618c.getItemViewType(i) == 0) {
            b(((com.roblox.client.chat.a.d) this.f6618c.getItem(i)).c());
            return;
        }
        if (this.o == null) {
            com.roblox.client.chat.a.m mVar = (com.roblox.client.chat.a.m) this.f6618c.getItem(i);
            this.n = com.roblox.client.chat.a.m.b(mVar.a());
            if (this.g != null) {
                h();
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(Long.valueOf(mVar.a()));
            com.roblox.client.h.j jVar = new com.roblox.client.h.j((ArrayList<Long>) arrayList, new j.a() { // from class: com.roblox.client.chat.h.3
                @Override // com.roblox.client.h.j.a
                public void a(boolean z, long j2, String str) {
                    h.this.o = null;
                }
            });
            this.o = jVar.a();
            com.roblox.client.i.g.a().a(jVar);
        }
    }

    @Override // android.support.v7.widget.Toolbar.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.menu_create_group /* 2131231015 */:
                i();
                return true;
            default:
                return false;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.e) {
            i();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 43431 && i2 == 43433 && intent != null && intent.getLongExtra("CONVERSATION_REMOVED_EXTRA", -1L) != -1) {
            f();
        }
    }

    private void a(Menu menu, MenuInflater menuInflater) {
        this.f6616a = new com.roblox.client.j.c(this);
        this.f6616a.a(menu, menuInflater);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.k.size() > 0) {
            this.j.setVisibility(8);
            this.r.setVisibility(8);
            this.q.c();
        } else {
            this.j.setVisibility(0);
            if (this.l.c()) {
                this.r.setVisibility(8);
                this.q.c();
            }
        }
    }

    private boolean e() {
        return this.r.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        this.f6619d.setRefreshing(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.roblox.client.chat.a.e eVarB = com.roblox.client.chat.a.a.a().b();
        com.roblox.client.chat.a.e<com.roblox.client.chat.a.d> eVar = new com.roblox.client.chat.a.e();
        eVar.addAll(eVarB);
        HashSet hashSet = new HashSet();
        for (com.roblox.client.chat.a.d dVar : eVar) {
            if ("OneToOneConversation".equals(dVar.i())) {
                ArrayList<com.roblox.client.chat.a.m> arrayListD = dVar.d();
                if (arrayListD.size() >= 2) {
                    if (arrayListD.get(0).a() != com.roblox.client.i.h.a().b()) {
                        hashSet.add(Long.valueOf(arrayListD.get(0).a()));
                    } else {
                        hashSet.add(Long.valueOf(arrayListD.get(1).a()));
                    }
                }
            }
        }
        ArrayList<com.roblox.client.chat.a.m> arrayListB = n.a().b();
        ArrayList<com.roblox.client.chat.a.m> arrayList = new ArrayList();
        arrayList.addAll(arrayListB);
        ArrayList arrayList2 = new ArrayList();
        for (com.roblox.client.chat.a.m mVar : arrayList) {
            if (!hashSet.contains(Long.valueOf(mVar.a()))) {
                arrayList2.add(mVar);
            }
        }
        this.k.clear();
        this.k.addAll(eVar);
        this.k.addAll(arrayList2);
        this.f6618c.notifyDataSetChanged();
        b(this.n);
        c();
    }

    private void b(String str) {
        boolean z;
        if (str != null) {
            int count = this.f6618c.getCount();
            for (int i = 0; i < count; i++) {
                if (str.equals(((com.roblox.client.chat.a.f) this.f6618c.getItem(i)).k())) {
                    this.h.setItemChecked(i, true);
                    z = true;
                    break;
                }
            }
            z = false;
        } else {
            z = false;
        }
        if (!z) {
            this.h.clearChoices();
        }
    }

    public void b() {
        g();
        if (this.g != null) {
            h();
        }
        c();
    }

    @Override // com.roblox.client.components.a
    public boolean d() {
        ComponentCallbacks componentCallbacksA = getChildFragmentManager().a(b.class.getName());
        if (!(componentCallbacksA instanceof com.roblox.client.components.a)) {
            return false;
        }
        boolean zD = ((com.roblox.client.components.a) componentCallbacksA).d();
        if (!zD && this.n != null) {
            g();
            return true;
        }
        return zD;
    }

    private void g() {
        this.n = null;
        this.h.clearChoices();
        this.f6618c.notifyDataSetChanged();
    }

    private void h() {
        if (!(getChildFragmentManager().a(b.class.getName()) instanceof j)) {
            android.support.v4.app.p pVarA = getChildFragmentManager().a();
            j jVar = new j();
            Bundle bundle = new Bundle();
            bundle.putBoolean("SHOW_SHADOWS_EXTRA", true);
            jVar.setArguments(bundle);
            pVarA.b(R.id.second_panel, jVar, b.class.getName());
            pVarA.c();
        }
    }

    public void a(long j) {
        a(j, false);
    }

    public void a(long j, boolean z) {
        Fragment fragmentA = getChildFragmentManager().a(b.class.getName());
        if (!(fragmentA instanceof f)) {
            android.support.v4.app.p pVarA = getChildFragmentManager().a();
            f fVar = new f();
            Bundle bundle = new Bundle();
            bundle.putBoolean("SHOW_SHADOWS_EXTRA", true);
            bundle.putLong("CONVERSATION_ID_EXTRA", j);
            bundle.putBoolean("SHOW_RENAME_TITLE", z);
            fVar.setArguments(bundle);
            pVarA.b(R.id.second_panel, fVar, b.class.getName());
            pVarA.c();
            return;
        }
        ((f) fragmentA).a(j, z);
    }

    private void b(long j) {
        b(j, false);
    }

    private void b(long j, boolean z) {
        if (com.roblox.client.chat.a.a.a().c(j) == null) {
            com.roblox.client.i.g.a().a(new com.roblox.client.h.e(getContext(), j, false));
        }
        this.n = com.roblox.client.chat.a.d.c(j);
        if (this.g == null) {
            b(this, j);
        } else {
            a(j, z);
        }
    }

    private void i() {
        if (this.g == null) {
            a((Fragment) this);
            return;
        }
        if (!(getChildFragmentManager().a(b.class.getName()) instanceof e)) {
            android.support.v4.app.p pVarA = getChildFragmentManager().a();
            e eVar = new e();
            Bundle bundle = new Bundle();
            bundle.putBoolean("SHOW_SHADOWS_EXTRA", true);
            eVar.setArguments(bundle);
            pVarA.b(R.id.second_panel, eVar, b.class.getName());
            pVarA.c();
        }
        g();
        c();
    }

    private void b(Fragment fragment, long j) {
        Intent intent = new Intent(fragment.getContext(), (Class<?>) ConversationActivity.class);
        intent.putExtra("FEATURE_EXTRA", "CHAT_FEATURE");
        intent.putExtra("CONVERSATION_ID_EXTRA", j);
        fragment.startActivityForResult(intent, 43431);
        if (fragment.getActivity() != null) {
            fragment.getActivity().overridePendingTransition(R.anim.in_from_right, android.R.anim.fade_out);
        }
    }

    private void a(Fragment fragment) {
        Intent intent = new Intent(fragment.getContext(), (Class<?>) ConversationActivity.class);
        intent.putExtra("FEATURE_EXTRA", "CHAT_CREATE_FEATURE");
        fragment.startActivityForResult(intent, 43431);
        if (fragment.getActivity() != null) {
            fragment.getActivity().overridePendingTransition(R.anim.in_from_right, android.R.anim.fade_out);
        }
    }

    private class a extends com.roblox.client.components.k implements d.a, o.a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f6625c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f6626d;

        public a() {
            super(30);
            this.f6625c = true;
            this.f6626d = true;
        }

        @Override // com.roblox.client.components.k, android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            if (RealtimeService.a()) {
                super.onScroll(absListView, i, i2, i3);
            }
        }

        @Override // com.roblox.client.components.k
        public void a(int i) {
            if (this.f6625c) {
                com.roblox.client.i.g.a().a(new com.roblox.client.h.d(this.f6756b, i, this));
            }
            if (this.f6626d) {
                c(i);
            }
        }

        @Override // com.roblox.client.h.d.a
        public void a(boolean z, int i, int i2) {
            if (z) {
                b(i);
                if (i2 > 0) {
                    h.this.f();
                } else {
                    this.f6625c = false;
                    h.this.c();
                }
            }
            h.this.a(false);
        }

        private void c(int i) {
            com.roblox.client.i.g.a().a(new o(com.roblox.client.i.h.a().b(), this.f6756b, (i - 1) * this.f6756b, this));
        }

        @Override // com.roblox.client.h.o.a
        public void a(boolean z, com.roblox.client.e.l lVar) {
            if (z) {
                if (lVar.a() > 0) {
                    h.this.f();
                } else {
                    this.f6626d = false;
                    h.this.c();
                }
            }
        }

        @Override // com.roblox.client.components.k
        public void a() {
            super.a();
            this.f6625c = true;
            this.f6626d = true;
        }
    }

    private void j() {
        this.l.a();
        this.h.setOnScrollListener(this.l);
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onChatConversationUpdatedEvent(com.roblox.client.e.e eVar) {
        if (eVar.a() != null) {
            f();
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onAvatarHeadshotsRetrievedEvent(com.roblox.client.e.c cVar) {
        f();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onLatestMessagesUpdatedEvent(com.roblox.client.e.o oVar) {
        f();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onUserStatusUpdatedEvent(z zVar) {
        f();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onRealtimeConversationRemovedEvent(u uVar) {
        ComponentCallbacks componentCallbacksK = k();
        if ((componentCallbacksK instanceof ConversationActivity.a) && ((ConversationActivity.a) componentCallbacksK).a() == uVar.a()) {
            b();
        }
        f();
    }

    private Fragment k() {
        Fragment fragmentA = getChildFragmentManager().a(b.class.getName());
        if (fragmentA != null) {
            return fragmentA;
        }
        return null;
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onChatNewConversationEvent(com.roblox.client.e.g gVar) {
        if (gVar.b()) {
            b(gVar.a(), gVar.c());
            f();
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onSignalRConnectivityChangeEvent(v vVar) {
        if (vVar.a() && (vVar.b() || e())) {
            j();
            f();
        }
        this.i.setVisibility(vVar.a() ? 8 : 0);
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onFriendshipUpdatedEvent(com.roblox.client.e.m mVar) {
        if (mVar.a() != null) {
            if (mVar.b() == 1 || mVar.b() == 0) {
                f();
            }
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onUnreadNotificationCountEvent(w wVar) {
        com.roblox.client.util.g.a("CLF.onUnreadNotificationCountEvent() " + wVar.a());
        if (this.f6616a != null) {
            this.f6616a.b();
        }
    }

    public void a(String str) {
        com.roblox.client.util.g.a("CLF.onChatUserFriendsSearchStringChanged() " + str);
        if (this.f6618c != null) {
            this.f6618c.a(str.trim());
            this.f6618c.notifyDataSetChanged();
            b(this.n);
            if (str.length() > 0 && this.s == null) {
                this.s = new k(30, this.t);
                this.s.a(this.l.b());
            }
        }
    }

    private void l() {
        if (this.f6616a != null) {
            this.f6616a.b();
        }
    }

    public static void a(Fragment fragment, long j) {
        a(fragment, RobloxSettings.baseUrl() + "users/" + j + "/profile/", R.string.CommonUI_Features_Label_Profile);
    }

    public static void a(Fragment fragment, long j, long j2) {
        if (com.roblox.client.b.D()) {
            String str = RobloxSettings.baseUrl() + "abusereport/embedded/chat?actionName=chat&id=" + j + "&redirectUrl=" + RobloxSettings.baseUrl() + "users/" + j + "/profile&conversationid=" + j2;
            android.support.v4.app.h activity = fragment.getActivity();
            if (fragment != null && activity != null) {
                ActivityNativeMain.a(activity, str, activity.getString(R.string.CommonUI_Features_Heading_ReportAbuse));
                return;
            }
            return;
        }
        a(fragment, RobloxSettings.baseUrl() + "abusereport/UserProfile?id=" + j + "&redirectUrl=" + RobloxSettings.baseUrl() + "users/" + j + "/profile/", R.string.CommonUI_Features_Heading_ReportAbuse);
    }

    public static void a(Fragment fragment, String str, int i) {
        a(fragment, str, fragment.getString(i));
    }

    public static void a(Fragment fragment, String str, String str2) {
        if (fragment != null && fragment.getActivity() != null) {
            ActivityNativeMain.b(fragment.getActivity(), str, str2);
        }
    }
}
