package com.roblox.client.chat;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.p;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.roblox.client.R;
import com.roblox.client.chat.ConversationActivity;
import com.roblox.client.e.v;
import com.roblox.client.realtime.RealtimeService;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class m extends b implements ConversationActivity.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Toolbar f6642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ListView f6643c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f6644d;
    private View e;
    private long f;
    private c g;
    private View.OnClickListener h = new View.OnClickListener() { // from class: com.roblox.client.chat.m.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!RealtimeService.a()) {
                Toast.makeText(m.this.getActivity(), R.string.Feature_Chat_Response_WaitingForConnection, 0).show();
            }
            switch (view.getId()) {
                case R.id.contact_remove /* 2131230806 */:
                    l.a(m.this.getContext(), m.this.f, ((Long) view.getTag(R.id.contact_id_tag)).longValue(), (DialogInterface.OnClickListener) null);
                    break;
                case R.id.contact_report /* 2131230807 */:
                    l.a(m.this, ((Long) view.getTag(R.id.contact_id_tag)).longValue(), (DialogInterface.OnClickListener) null, m.this.f);
                    break;
            }
        }
    };

    @Override // com.roblox.client.chat.ConversationActivity.a
    public long a() {
        return this.f;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        boolean z;
        View viewInflate = layoutInflater.inflate(R.layout.fragment_chat_view_participants, viewGroup, false);
        a(viewInflate);
        this.f6644d = viewInflate.findViewById(R.id.shadow_top);
        this.e = viewInflate.findViewById(R.id.shadow_center);
        this.f6642b = (Toolbar) viewInflate.findViewById(R.id.toolbar_chat);
        Bundle arguments = getArguments();
        if (arguments != null) {
            z = arguments.getBoolean("SHOW_SHADOWS_EXTRA", false);
            this.f = arguments.getLong("CONVERSATION_ID_EXTRA", -1L);
        } else {
            z = false;
        }
        this.f6644d.setVisibility(z ? 0 : 8);
        this.e.setVisibility(z ? 0 : 8);
        com.roblox.client.chat.a.d dVarH = h();
        if (dVarH == null) {
            d();
            return viewInflate;
        }
        a(dVarH);
        this.f6642b.setNavigationIcon(R.drawable.icon_back);
        this.f6642b.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.chat.m.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                m.this.d();
            }
        });
        this.g = new c(getActivity(), true, dVarH.a() == com.roblox.client.i.h.a().b(), this.h);
        this.g.a(h().d());
        this.f6643c = (ListView) viewInflate.findViewById(R.id.list);
        this.f6643c.setAdapter((ListAdapter) this.g);
        this.f6643c.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.roblox.client.chat.m.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                h.a(m.this, m.this.g.getItem(i).a());
            }
        });
        return viewInflate;
    }

    private void a(com.roblox.client.chat.a.d dVar) {
        this.f6642b.setTitle(getString(R.string.Feature_Chat_Label_GroupChatParticipants) + " (" + (this.f != -1 ? dVar.e() : 0) + "/" + com.roblox.client.b.K() + ")");
    }

    private void f() {
        com.roblox.client.chat.a.d dVarH = h();
        this.g.a(dVarH.d());
        this.g.notifyDataSetChanged();
        a(dVarH);
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        org.greenrobot.eventbus.c.a().a(this);
        u_();
        com.roblox.client.i.b("chatConversationParticipants");
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        org.greenrobot.eventbus.c.a().b(this);
        super.onStop();
    }

    private void g() {
        f fVar = new f();
        Bundle bundle = new Bundle();
        bundle.putLong("CONVERSATION_ID_EXTRA", this.f);
        fVar.setArguments(bundle);
        p pVarA = getFragmentManager().a();
        pVarA.b(R.id.shell_container, fVar, b.class.getName());
        pVarA.c();
    }

    private com.roblox.client.chat.a.d h() {
        return com.roblox.client.chat.a.a.a().c(this.f);
    }

    @Override // com.roblox.client.chat.b, com.roblox.client.components.a
    public boolean d() {
        if (!b()) {
            g();
            return true;
        }
        ((h) getParentFragment()).a(this.f);
        return true;
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onChatConversationUpdatedEvent(com.roblox.client.e.e eVar) {
        if (eVar.a() != null && eVar.a().c() == this.f) {
            f();
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onSignalRConnectivityChangeEvent(v vVar) {
        if (vVar.a() && vVar.b() && this.f != -1) {
            f();
        }
        u_();
    }
}
