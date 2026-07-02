package com.roblox.client.chat;

import android.graphics.PorterDuff;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.roblox.client.R;
import com.roblox.client.chat.ConversationActivity;
import com.roblox.client.chat.a.n;
import com.roblox.client.e.v;
import com.roblox.client.e.z;
import com.roblox.client.h.f;
import com.roblox.client.h.j;
import com.roblox.client.h.o;
import com.roblox.client.p;
import com.roblox.client.realtime.RealtimeService;
import java.util.ArrayList;
import java.util.List;
import org.apmem.tools.layouts.FlowLayout;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class e extends b implements View.OnClickListener, ConversationActivity.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6564c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f6565d;
    private TextView e;
    private Toolbar f;
    private ScrollView g;
    private FlowLayout h;
    private ListView i;
    private EditText j;
    private ImageView k;
    private View l;
    private View m;
    private View n;
    private com.roblox.client.chat.a.b q;
    private a r;
    private int t;
    private int u;
    private k v;
    private String o = null;
    private final int p = 50;
    private long s = -1;
    private o.a w = new o.a() { // from class: com.roblox.client.chat.e.1
        @Override // com.roblox.client.h.o.a
        public void a(boolean z, com.roblox.client.e.l lVar) {
            if (z && lVar.a() > 0) {
                e.this.q.a((List) lVar.c(), lVar.b());
                e.this.f6565d.notifyDataSetChanged();
            }
        }
    };

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.q = new com.roblox.client.chat.a.b();
        this.r = new a();
        this.t = getResources().getColor(R.color.chatSecondary);
        this.u = getResources().getColor(R.color.RbxOrange);
        this.f6563b = getString(R.string.Feature_Chat_Label_CreateChatGroup);
        this.f6564c = getString(R.string.Feature_Chat_Heading_AddFriends);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        boolean z;
        final long j;
        View viewInflate = layoutInflater.inflate(R.layout.fragment_conversation_create, viewGroup, false);
        a(viewInflate);
        Bundle arguments = getArguments();
        if (arguments == null) {
            z = false;
            j = -1;
        } else {
            boolean z2 = arguments.getBoolean("SHOW_SHADOWS_EXTRA", false);
            this.s = arguments.getLong("CONVERSATION_ID_EXTRA", -1L);
            z = z2;
            j = arguments.getLong("ONE_ON_ONE_CHAT_PARTICIPANT_ID", -1L);
        }
        this.f = (Toolbar) viewInflate.findViewById(R.id.toolbar_chat);
        this.f.setBackgroundResource(R.color.chatCreateHeader);
        this.f.setNavigationIcon(R.drawable.icon_back);
        this.f.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.chat.e.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.this.d();
            }
        });
        this.l = viewInflate.findViewById(R.id.header_shadow);
        this.m = viewInflate.findViewById(R.id.selection_shadow);
        this.n = viewInflate.findViewById(R.id.list_shadow);
        this.j = (EditText) viewInflate.findViewById(R.id.search_edit);
        this.j.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.chat.e.3
            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                e.this.f6565d.a(editable.toString().trim());
                e.this.f6565d.notifyDataSetChanged();
                if (editable.length() > 0 && e.this.v == null) {
                    e.this.v = new k(50, e.this.w);
                    e.this.v.a(e.this.r.b());
                }
                e.this.k.setVisibility(editable.length() > 0 ? 0 : 8);
            }
        });
        this.j.setHint(getString(R.string.Feature_Chat_Description_SearchWordSmall));
        this.k = (ImageView) viewInflate.findViewById(R.id.close_search);
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.chat.e.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.this.j.setText("");
                p.a(e.this.getContext(), e.this.j);
            }
        });
        this.e = (TextView) viewInflate.findViewById(R.id.create_conversation_action_button);
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.chat.e.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RealtimeService.a()) {
                    if (e.this.o == null) {
                        e.this.c(j);
                        return;
                    }
                    return;
                }
                Toast.makeText(e.this.getContext(), R.string.Feature_Chat_Response_WaitingForConnection, 0).show();
            }
        });
        this.f6565d = new c(getActivity());
        this.f6565d.a(this.q);
        if (this.s != -1) {
            this.f6565d.a(com.roblox.client.chat.a.a.a().c(this.s).d(), true);
            this.e.setText(R.string.Feature_Chat_Action_Add);
            this.f.setTitle(this.f6564c);
        } else {
            this.f.setTitle(this.f6563b);
        }
        this.i = (ListView) viewInflate.findViewById(R.id.list);
        this.i.setAdapter((ListAdapter) this.f6565d);
        this.i.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.roblox.client.chat.e.6
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j2) {
                com.roblox.client.chat.a.m item = e.this.f6565d.getItem(i);
                if (!e.this.a(item.a())) {
                    if (e.this.f() + e.this.f6565d.a() < com.roblox.client.b.K() - 1) {
                        if (e.this.f6565d.a(e.this.f6565d.getItem(i))) {
                            Toast.makeText(e.this.getContext(), R.string.Feature_Chat_Response_FriendAlreadyInConversation, 0).show();
                            return;
                        } else {
                            com.roblox.client.chat.a.m mVarA = n.a().a(item.a());
                            e.this.a(item.b(), item.a(), mVarA != null ? mVarA.d() : item.d());
                            e.this.j.getText().clear();
                        }
                    } else {
                        Toast.makeText(e.this.getContext(), R.string.Feature_Chat_Response_ConversationFriendLimitReached, 0).show();
                        return;
                    }
                }
                e.this.g();
                e.this.f6565d.notifyDataSetChanged();
            }
        });
        this.l.setVisibility(z ? 0 : 8);
        this.m.setVisibility(z ? 0 : 8);
        this.n.setVisibility(z ? 0 : 8);
        this.g = (ScrollView) viewInflate.findViewById(R.id.contacts_container);
        this.h = (FlowLayout) viewInflate.findViewById(R.id.contacts_flow);
        g();
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int f() {
        return this.h.getChildCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        boolean z = false;
        int iF = f();
        int iA = iF + this.f6565d.a();
        String str = this.s != -1 ? this.f6564c : this.f6563b;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) str);
        spannableStringBuilder.append((CharSequence) " (").append((CharSequence) Integer.toString(iA)).append((CharSequence) "/").append((CharSequence) Integer.toString(com.roblox.client.b.K() - 1)).append((CharSequence) ")");
        if (iA >= com.roblox.client.b.K() - 1) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(this.u), str.length(), spannableStringBuilder.length(), 33);
        }
        this.f.setTitle(spannableStringBuilder);
        this.g.setVisibility(iF == 0 ? 8 : 0);
        TextView textView = this.e;
        if (iF > 0 && iA >= 2) {
            z = true;
        }
        textView.setEnabled(z);
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        com.roblox.client.chat.a.d dVarC;
        super.onActivityCreated(bundle);
        ArrayList<com.roblox.client.chat.a.m> arrayListB = n.a().b();
        if (!arrayListB.isEmpty()) {
            this.q.a((List) arrayListB, 0);
            this.f6565d.notifyDataSetChanged();
        }
        if (this.s != -1 && (dVarC = com.roblox.client.chat.a.a.a().c(this.s)) != null) {
            dVarC.d();
        }
    }

    @Override // com.roblox.client.chat.b, com.roblox.client.components.a
    public boolean d() {
        if (this.s == -1) {
            c();
            return true;
        }
        if (!b()) {
            d(this.s);
            return true;
        }
        ((h) getParentFragment()).a(this.s);
        return true;
    }

    @Override // com.roblox.client.chat.ConversationActivity.a
    public long a() {
        return this.s;
    }

    private class a extends com.roblox.client.components.k implements o.a {
        public a() {
            super(50);
        }

        @Override // com.roblox.client.components.k, android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            if (RealtimeService.a()) {
                super.onScroll(absListView, i, i2, i3);
            }
        }

        @Override // com.roblox.client.components.k
        public void a(int i) {
            com.roblox.client.i.g.a().a(new o(com.roblox.client.i.h.a().b(), 50, (i - 1) * 50, this));
        }

        @Override // com.roblox.client.h.o.a
        public void a(boolean z, com.roblox.client.e.l lVar) {
            if (z) {
                e.this.r.b((lVar.b() / 50) + 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, long j, String str2) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.chat_contact_item, (ViewGroup) this.h, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.contact_name);
        ((ImageView) viewInflate.findViewById(R.id.icon_close)).getDrawable().setColorFilter(this.t, PorterDuff.Mode.SRC_IN);
        textView.setText(str);
        viewInflate.setTag(R.id.contact_name, Long.valueOf(j));
        viewInflate.setOnClickListener(this);
        this.h.addView(viewInflate);
        this.g.post(new Runnable() { // from class: com.roblox.client.chat.e.7
            @Override // java.lang.Runnable
            public void run() {
                e.this.g.fullScroll(130);
            }
        });
        this.g.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(long j) {
        int childCount = this.h.getChildCount();
        for (int i = 0; i < childCount; i++) {
            Object tag = this.h.getChildAt(i).getTag(R.id.contact_name);
            if ((tag instanceof Long) && ((Long) tag).longValue() == j) {
                this.h.removeViewAt(i);
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag(R.id.contact_name);
        if (tag instanceof Long) {
            a(((Long) tag).longValue());
            b(((Long) tag).longValue());
            g();
        }
    }

    private void b(long j) {
        for (int i = 0; i < this.i.getCount(); i++) {
            Object itemAtPosition = this.i.getItemAtPosition(i);
            if ((itemAtPosition instanceof com.roblox.client.chat.a.m) && ((com.roblox.client.chat.a.m) itemAtPosition).a() == j) {
                this.i.setItemChecked(i, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j) {
        if (this.f6565d.a() >= com.roblox.client.b.K() - 1) {
            Toast.makeText(getContext(), R.string.Feature_Chat_Response_ConversationFriendLimitReached, 0).show();
            return;
        }
        if (f() <= 0) {
            Toast.makeText(getContext(), R.string.Feature_Chat_Response_SelectContact, 0).show();
            return;
        }
        int childCount = this.h.getChildCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < childCount; i++) {
            Object tag = this.h.getChildAt(i).getTag(R.id.contact_name);
            if (tag instanceof Long) {
                arrayList.add((Long) tag);
            }
        }
        if (j != -1) {
            arrayList.add(Long.valueOf(j));
        }
        if (this.s == -1 || j != -1) {
            com.roblox.client.h.j jVar = new com.roblox.client.h.j((ArrayList<Long>) arrayList, new j.a() { // from class: com.roblox.client.chat.e.8
                @Override // com.roblox.client.h.j.a
                public void a(boolean z, long j2, String str) {
                    e.this.o = null;
                }
            });
            this.o = jVar.a();
            com.roblox.client.i.g.a().a(jVar);
        } else {
            com.roblox.client.h.f fVar = new com.roblox.client.h.f(this.s, arrayList, new f.a() { // from class: com.roblox.client.chat.e.9
                @Override // com.roblox.client.h.f.a
                public void a(boolean z, long j2, String str) {
                    e.this.o = null;
                    if (z) {
                        e.this.d(j2);
                    }
                }
            });
            this.o = fVar.a();
            com.roblox.client.i.g.a().a(fVar);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        org.greenrobot.eventbus.c.a().a(this);
        this.r.a();
        this.i.setOnScrollListener(this.r);
        u_();
        this.v = null;
        com.roblox.client.i.b("chatCreateConversation");
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        org.greenrobot.eventbus.c.a().b(this);
        super.onStop();
        e();
        this.j.clearFocus();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onSignalRConnectivityChangeEvent(v vVar) {
        if (vVar.a() && vVar.b()) {
            this.r.a();
            this.i.setOnScrollListener(this.r);
        }
        u_();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onFriendsListRetrievedEvent(com.roblox.client.e.l lVar) {
        if (lVar.a() > 0) {
            this.q.a((List) lVar.c(), lVar.b());
            this.f6565d.notifyDataSetChanged();
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onFriendshipUpdatedEvent(com.roblox.client.e.m mVar) {
        if (mVar.a() != null) {
            if (mVar.b() == 0) {
                this.q.a(mVar.a(), false);
                this.f6565d.notifyDataSetChanged();
            } else if (mVar.b() == 1) {
                this.q.a(mVar.a());
                this.f6565d.notifyDataSetChanged();
            }
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onAvatarHeadshotsRetrievedEvent(com.roblox.client.e.c cVar) {
        this.f6565d.notifyDataSetChanged();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onUserStatusUpdatedEvent(z zVar) {
        this.f6565d.notifyDataSetChanged();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onChatNewConversationEvent(com.roblox.client.e.g gVar) {
        if (!b() && gVar.b()) {
            a(gVar.a(), gVar.c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(long j) {
        a(j, false);
    }

    private void a(long j, boolean z) {
        f fVar = new f();
        Bundle bundle = new Bundle();
        bundle.putLong("CONVERSATION_ID_EXTRA", j);
        bundle.putBoolean("SHOW_SHADOWS_EXTRA", b());
        bundle.putBoolean("SHOW_RENAME_TITLE", z);
        fVar.setArguments(bundle);
        android.support.v4.app.p pVarA = getFragmentManager().a();
        pVarA.b(b() ? R.id.second_panel : R.id.shell_container, fVar, b.class.getName());
        pVarA.c();
    }
}
