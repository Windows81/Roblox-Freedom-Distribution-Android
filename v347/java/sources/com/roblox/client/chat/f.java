package com.roblox.client.chat;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v7.widget.Toolbar;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import b.ac;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.chat.ConversationActivity;
import com.roblox.client.chat.a.n;
import com.roblox.client.chat.d;
import com.roblox.client.components.p;
import com.roblox.client.e.v;
import com.roblox.client.e.z;
import com.roblox.client.h.a;
import com.roblox.client.h.g;
import com.roblox.client.h.h;
import com.roblox.client.h.q;
import com.roblox.client.h.t;
import com.roblox.client.http.u;
import com.roblox.client.realtime.RealtimeService;
import com.roblox.platform.http.postbody.chat.RenameGroupConversationPostBody;
import com.roblox.platform.http.postbody.chat.UpdateUserTypingStatusPostBody;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f extends com.roblox.client.chat.b implements Toolbar.OnMenuItemClickListener, ConversationActivity.a, d.c {
    private static final String G = com.roblox.client.chat.a.f6496a;
    private boolean A;
    private boolean B;
    private boolean C;
    private long D;
    private String F;
    private Handler I;
    private Runnable J;
    private u K;
    private u L;
    private com.roblox.client.components.c M;
    private View N;
    private View O;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Toolbar f6579d;
    private EditText e;
    private EditText f;
    private TextView g;
    private TextView h;
    private ListView i;
    private LinearLayout j;
    private LinearLayout k;
    private LinearLayout l;
    private View m;
    private View n;
    private View o;
    private View p;
    private View q;
    private ImageView r;
    private TextView s;
    private TextView t;
    private View u;
    private d v;
    private com.roblox.client.chat.a.c w;
    private com.roblox.client.chat.a.d z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6577b = 30;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f6578c = 5;
    private a x = new a(5);
    private long y = -1;
    private int E = -1;
    private final String H = "USER_TYPING_CLIENT_ID";

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.w = new com.roblox.client.chat.a.c();
        this.v = new d(this);
        this.I = new Handler();
        this.K = new u(com.roblox.client.b.n());
        this.L = new u(com.roblox.client.b.n());
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_conversation, viewGroup, false);
        a(viewInflate);
        this.j = (LinearLayout) viewInflate.findViewById(R.id.input_container);
        this.k = (LinearLayout) viewInflate.findViewById(R.id.rename_chat_container);
        this.l = (LinearLayout) viewInflate.findViewById(R.id.join_game_container);
        this.m = viewInflate.findViewById(R.id.chat_shadow_top);
        this.n = viewInflate.findViewById(R.id.chat_shadow_center);
        this.o = viewInflate.findViewById(R.id.chat_shadow_bottom);
        this.p = viewInflate.findViewById(R.id.rename_chat_shadow);
        this.q = viewInflate.findViewById(R.id.join_game_chat_shadow);
        this.r = (ImageView) viewInflate.findViewById(R.id.game_icon);
        this.s = (TextView) viewInflate.findViewById(R.id.game_name);
        this.f6579d = (Toolbar) viewInflate.findViewById(R.id.toolbar_chat);
        this.f6579d.inflateMenu(R.menu.chat_conversation_menu);
        this.f6579d.setOnMenuItemClickListener(this);
        this.f6579d.setOverflowIcon(p.a(getContext(), R.drawable.icon_settings_off, R.drawable.icon_settings_on));
        this.e = (EditText) viewInflate.findViewById(R.id.message);
        this.f = (EditText) viewInflate.findViewById(R.id.rename_chat);
        this.g = (TextView) viewInflate.findViewById(R.id.send_button);
        this.g.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.chat.f.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                f.this.m();
            }
        });
        this.h = (TextView) viewInflate.findViewById(R.id.rename_button);
        this.h.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.chat.f.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                f.this.h();
            }
        });
        this.t = (TextView) viewInflate.findViewById(R.id.join_button);
        this.t.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.chat.f.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                f.this.g();
            }
        });
        this.i = (ListView) viewInflate.findViewById(R.id.list);
        this.N = viewInflate.findViewById(R.id.chat_list_loading);
        this.O = viewInflate.findViewById(R.id.rename_chat_join_game_container);
        this.e.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.chat.f.12
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 4) {
                    return false;
                }
                f.this.m();
                return true;
            }
        });
        this.e.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.chat.f.13
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable == null || editable.toString().trim().length() <= 0) {
                    f.this.g.setVisibility(8);
                } else {
                    f.this.g.setVisibility(0);
                    f.this.a(true, f.this.y);
                }
            }
        });
        this.e.setHint(getString(R.string.Feature_Chat_Description_SendMessageSmall));
        this.e.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.chat.f.14
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    f.this.b(false);
                }
            }
        });
        this.f.setHint(getString(R.string.Feature_Chat_Description_NameGroupChat));
        this.f.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.chat.f.15
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    f.this.c(false);
                }
            }
        });
        this.f.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.chat.f.16
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 6) {
                    return false;
                }
                f.this.h();
                return true;
            }
        });
        if (com.roblox.client.b.L()) {
            this.e.setFilters(new InputFilter[]{new com.roblox.client.components.b()});
        }
        Bundle arguments = getArguments();
        boolean z = arguments != null ? arguments.getBoolean("SHOW_SHADOWS_EXTRA", false) : false;
        this.m.setVisibility(z ? 0 : 8);
        this.n.setVisibility(z ? 0 : 8);
        this.o.setVisibility(z ? 0 : 8);
        this.p.setVisibility(z ? 0 : 8);
        this.q.setVisibility(z ? 0 : 8);
        this.u = viewInflate.findViewById(R.id.new_chats_available);
        this.u.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.chat.f.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                f.this.i.smoothScrollToPosition(f.this.w.size() - 1);
            }
        });
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        com.roblox.client.chat.a.d dVarC;
        com.roblox.client.chat.a.i iVarC;
        if (this.y != -1 && (dVarC = com.roblox.client.chat.a.a.a().c(this.y)) != null) {
            long jG = dVarC.g();
            if (jG != -1 && (iVarC = n.a().c(jG)) != null) {
                com.roblox.client.game.a aVarA = com.roblox.client.game.a.a(Long.valueOf(iVarC.c()), null, null, iVarC.d(), null);
                if (getActivity() != null) {
                    com.roblox.client.game.b.a().a(getActivity(), aVarA, 10104);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, long j) {
        if (com.roblox.client.b.t()) {
            if ((z ? this.K : this.L).a()) {
                com.roblox.platform.g.a().b().a(new UpdateUserTypingStatusPostBody(j, z)).a(new com.roblox.platform.http.a.a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        c(true);
        b(false);
        com.roblox.client.p.b(this.f);
        i();
        this.f.getText().clear();
    }

    private void i() {
        String strTrim = this.f.getText().toString().trim();
        if (!strTrim.equals(this.F)) {
            this.f6579d.setTitle(strTrim);
            com.roblox.platform.g.a().b().a(new RenameGroupConversationPostBody(this.y, strTrim)).a(new d.d<ac>() { // from class: com.roblox.client.chat.f.2
                @Override // d.d
                public void a(d.b<ac> bVar, d.l<ac> lVar) {
                    String string;
                    try {
                        String strA = com.roblox.client.util.l.a(lVar);
                        JSONObject jSONObject = new JSONObject(strA);
                        String string2 = jSONObject.getString("resultType");
                        String string3 = jSONObject.getString("statusMessage");
                        com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "renameGroupConversation() payload:" + strA);
                        if (lVar.a() != 200) {
                            f.this.a(f.this.getString(R.string.Feature_Chat_Response_ChatNameUpdateFailed));
                            f.this.f6579d.setTitle(f.this.z.b());
                            com.roblox.client.util.g.e(f.G, string3);
                            return;
                        }
                        if ("Success".equals(string2)) {
                            boolean z = jSONObject.getJSONObject("title").getBoolean("isDefaultTitle");
                            String string4 = jSONObject.getString("conversationTitle");
                            f.this.f6579d.setTitle(string4);
                            if (f.this.z != null) {
                                f.this.z.a(z);
                                f.this.z.a(string4);
                                return;
                            }
                            return;
                        }
                        if ("Moderated".equals(string2)) {
                            string = f.this.getString(R.string.Feature_Chat_Response_ChatNameFullyModerated);
                        } else {
                            string = f.this.getString(R.string.Feature_Chat_Response_ChatNameUpdateFailed);
                        }
                        f.this.a(string);
                        f.this.f6579d.setTitle(f.this.z.b());
                        com.roblox.client.util.g.e(f.G, string);
                    } catch (JSONException e) {
                        com.roblox.client.util.g.e(f.G, "Failed to parse Chat Rename Title Backend response");
                        f.this.a(f.this.getString(R.string.Feature_Chat_Response_ChatNameUpdateFailed));
                        f.this.f6579d.setTitle(f.this.z.b());
                    }
                }

                @Override // d.d
                public void a(d.b<ac> bVar, Throwable th) {
                    com.roblox.client.util.g.e(f.G, "Failed to Rename Title");
                    f.this.a(f.this.getString(R.string.Feature_Chat_Response_ChatNameUpdateFailed));
                    f.this.f6579d.setTitle(f.this.z.b());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        Context context = getContext();
        if (context != null) {
            Toast.makeText(context, str, 0).show();
        }
    }

    @Override // android.support.v7.widget.Toolbar.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.menu_add_friends /* 2131231014 */:
                l();
                break;
            case R.id.menu_create_group /* 2131231015 */:
            case R.id.menu_leave_group /* 2131231016 */:
            case R.id.menu_search_friends /* 2131231019 */:
            default:
                if (!RealtimeService.a()) {
                    Toast.makeText(getActivity(), R.string.Feature_Chat_Response_WaitingForConnection, 0).show();
                } else {
                    switch (menuItem.getItemId()) {
                        case R.id.menu_leave_group /* 2131231016 */:
                            l.a(getContext(), this.y, com.roblox.client.i.h.a().b(), (DialogInterface.OnClickListener) null);
                    }
                }
                break;
            case R.id.menu_rename_title /* 2131231017 */:
                if (this.z != null) {
                    if (this.z.f()) {
                        this.f.getText().clear();
                    } else {
                        this.f.setText(this.z.b());
                    }
                    this.f.requestFocus();
                    this.F = this.z.b();
                    new Handler().postDelayed(new Runnable() { // from class: com.roblox.client.chat.f.3
                        @Override // java.lang.Runnable
                        public void run() {
                            f.this.f.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, 0.0f, 0.0f, 0));
                            f.this.f.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, 0.0f, 0.0f, 0));
                            f.this.f.setSelection(f.this.f.getText().length());
                        }
                    }, 100L);
                    b(true);
                }
                break;
            case R.id.menu_report /* 2131231018 */:
                l.a(this, j(), (DialogInterface.OnClickListener) null, this.y);
                break;
            case R.id.menu_view_participants /* 2131231020 */:
                k();
                e();
                break;
            case R.id.menu_view_profile /* 2131231021 */:
                h.a(this, j());
                break;
        }
        return true;
    }

    private long j() {
        long jA = 0;
        if (this.z != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.z.e()) {
                    break;
                }
                jA = this.z.d().get(i2).a();
                if (jA != com.roblox.client.i.h.a().b()) {
                    break;
                }
                i = i2 + 1;
            }
        }
        return jA;
    }

    private void k() {
        m mVar = new m();
        Bundle bundle = new Bundle();
        bundle.putBoolean("SHOW_SHADOWS_EXTRA", b());
        bundle.putLong("CONVERSATION_ID_EXTRA", this.y);
        mVar.setArguments(bundle);
        int i = b() ? R.id.second_panel : R.id.shell_container;
        android.support.v4.app.p pVarA = getFragmentManager().a();
        pVarA.b(i, mVar, com.roblox.client.chat.b.class.getName());
        pVarA.c();
    }

    private void l() {
        e eVar = new e();
        Bundle bundle = new Bundle();
        bundle.putBoolean("SHOW_SHADOWS_EXTRA", b());
        bundle.putLong("CONVERSATION_ID_EXTRA", this.y);
        if ("OneToOneConversation".equals(this.z.i())) {
            bundle.putLong("ONE_ON_ONE_CHAT_PARTICIPANT_ID", this.z.g());
        }
        eVar.setArguments(bundle);
        int i = b() ? R.id.second_panel : R.id.shell_container;
        android.support.v4.app.p pVarA = getFragmentManager().a();
        pVarA.b(i, eVar, com.roblox.client.chat.b.class.getName());
        pVarA.c();
    }

    private void a(boolean z) {
        if (z) {
            this.f6579d.setNavigationIcon(R.drawable.icon_back);
            this.f6579d.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.chat.f.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    f.this.d();
                }
            });
        } else {
            this.f6579d.setNavigationIcon((Drawable) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        String strTrim = this.e.getText().toString().trim();
        if (this.y < 0) {
            Toast.makeText(getContext(), R.string.Feature_Chat_Response_ConversationNotFound, 0).show();
            this.e.setText(strTrim);
        } else if (strTrim.length() == 0) {
            Toast.makeText(getContext(), R.string.Feature_Chat_Response_TypeMessageToSend, 0).show();
            this.e.setText(strTrim);
        } else {
            a(this.y, strTrim);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        Bundle arguments;
        super.onActivityCreated(bundle);
        this.v.a(this.w);
        this.i.setAdapter((ListAdapter) this.v);
        this.i.setOnScrollListener(this.x);
        if (this.y == -1 && (arguments = getArguments()) != null) {
            a(arguments.getLong("CONVERSATION_ID_EXTRA", -1L), arguments.getBoolean("SHOW_RENAME_TITLE", false));
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        org.greenrobot.eventbus.c.a().a(this);
        u_();
        q();
        ArrayList<Long> arrayListF = com.roblox.client.chat.a.a.a().f(this.y);
        if (arrayListF != null && arrayListF.size() > 0) {
            a(this.y, arrayListF.get(0).longValue());
        }
        com.roblox.client.i.b("chatConversation");
        if (com.roblox.client.chat.a.a.a().c(this.y) == null) {
            com.roblox.client.util.g.b(G, "onStart() This conversation was removed");
            c();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        org.greenrobot.eventbus.c.a().b(this);
        super.onStop();
        a(this.y);
        e();
        if (this.J != null) {
            this.I.removeCallbacks(this.J);
            this.J = null;
            this.v.a();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        s();
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.e.clearFocus();
    }

    public void a(long j) {
        com.roblox.client.chat.a.c cVarA = com.roblox.client.chat.a.a.a().a(j);
        com.roblox.client.chat.a.h hVarD = cVarA.d();
        if (hVarD != null) {
            cVarA.a(hVarD.e(), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, int i, String str, String str2) {
        com.roblox.client.i.g.a().a(new com.roblox.client.h.a(t.n(), j, i, str, false, new b(str2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, int i, String str) {
        com.roblox.client.i.g.a().a(new com.roblox.client.h.a(t.n(), j, i, str, false, new b(this)));
    }

    private void a(long j, String str) {
        com.roblox.client.h.h hVar = new com.roblox.client.h.h(j, str, new h.a() { // from class: com.roblox.client.chat.f.5
            @Override // com.roblox.client.h.h.a
            public void a(String str2) {
                f.this.x();
            }

            @Override // com.roblox.client.h.h.a
            public void a(String str2, String str3) {
                f.this.x();
            }
        });
        com.roblox.client.i.g.a().a(hVar);
        com.roblox.client.chat.a.c cVarA = com.roblox.client.chat.a.a.a().a(j);
        com.roblox.client.chat.a.h hVar2 = new com.roblox.client.chat.a.h(System.currentTimeMillis(), com.roblox.client.i.h.a().b(), str);
        hVar2.b(hVar.a());
        hVar2.b(cVarA.c() + 1);
        cVarA.a(hVar2);
        x();
        n();
    }

    private void n() {
        this.e.setText("");
        t();
    }

    @Override // com.roblox.client.chat.ConversationActivity.a
    public long a() {
        return this.y;
    }

    private void o() {
        this.A = false;
        this.B = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        this.k.setVisibility(z ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z) {
        this.j.setVisibility(z ? 0 : 8);
    }

    public void a(long j, boolean z) {
        if (this.y != j && getView() != null) {
            this.l.setVisibility(8);
            com.roblox.client.chat.a.a.a().g(j);
            this.v.a();
            b(z);
            o();
            s();
            this.w.clear();
            this.i.setAdapter((ListAdapter) this.v);
            b(j);
            this.D = 0L;
            this.u.setVisibility(8);
            this.y = j;
            if (RobloxSettings.isPhone() && RobloxSettings.isShowVisibleAge()) {
                this.f6579d.setSubtitle(getContext() != null ? RobloxSettings.ageVisibilityText(getContext()) : null);
            }
            if (j > -1) {
                this.z = com.roblox.client.chat.a.a.a().c(j);
                this.v.a(this.z);
                if (this.z != null) {
                    a(this.z);
                    p();
                    this.f6579d.setTitle(this.z.b());
                } else {
                    this.f6579d.setTitle(R.string.Feature_Chat_Heading_Conversation);
                }
                com.roblox.client.chat.a.c cVarA = com.roblox.client.chat.a.a.a().a(j);
                if (cVarA != null && cVarA.size() > 0) {
                    d(true);
                }
                q();
                if (this.j.getVisibility() != 0) {
                    this.j.setVisibility(0);
                }
            } else {
                this.f6579d.setTitle("");
                if (this.j.getVisibility() != 8) {
                    this.j.setVisibility(8);
                }
            }
            a(j > -1);
            n();
        }
    }

    private void b(long j) {
        com.roblox.client.chat.a.c cVarA = com.roblox.client.chat.a.a.a().a(j);
        if (cVarA != null && cVarA.size() == 0) {
            r();
        } else {
            s();
        }
    }

    private void a(com.roblox.client.chat.a.d dVar) {
        String strI = dVar.i();
        if (com.roblox.client.b.al() && dVar != null && "OneToOneConversation".equals(strI)) {
            com.roblox.client.chat.a.i iVarC = n.a().c(dVar.g());
            if (iVarC != null && iVarC.e()) {
                this.l.setVisibility(0);
                this.s.setText(iVarC.b());
                if (getContext() != null) {
                    new com.roblox.client.http.h().a(RobloxSettings.joinGameIconUrl(iVarC.c()), null, new com.roblox.client.http.i() { // from class: com.roblox.client.chat.f.6
                        @Override // com.roblox.client.http.i, com.roblox.client.http.l
                        public void a(com.roblox.client.http.j jVar) {
                            if (jVar.b() == 200) {
                                try {
                                    com.d.a.t.a(f.this.getContext()).a(new JSONObject(jVar.a()).getString("Url")).a(f.this.r);
                                } catch (JSONException e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                    }).c();
                }
            }
        }
    }

    private void p() {
        if (this.z != null) {
            Menu menu = this.f6579d.getMenu();
            if ("OneToOneConversation".equals(this.z.i())) {
                menu.findItem(R.id.menu_view_profile).setVisible(true);
                menu.findItem(R.id.menu_report).setVisible(true);
                menu.findItem(R.id.menu_add_friends).setVisible(true);
                menu.findItem(R.id.menu_view_participants).setVisible(false);
                menu.findItem(R.id.menu_leave_group).setVisible(false);
                menu.findItem(R.id.menu_rename_title).setVisible(false);
                return;
            }
            menu.findItem(R.id.menu_view_profile).setVisible(false);
            menu.findItem(R.id.menu_report).setVisible(false);
            menu.findItem(R.id.menu_add_friends).setVisible(true);
            menu.findItem(R.id.menu_view_participants).setVisible(true);
            menu.findItem(R.id.menu_leave_group).setVisible(true);
            menu.findItem(R.id.menu_rename_title).setVisible(true);
        }
    }

    private void q() {
        if (RealtimeService.a() && !this.B && this.w.isEmpty() && this.y != -1) {
            this.B = true;
            a(this.y, 30, (String) null);
        }
    }

    private void r() {
        if (this.N != null) {
            this.M = new com.roblox.client.components.c(getContext(), this.N, 400, R.color.RbxGray3, R.color.RbxBlue2, null, null, Integer.valueOf(R.dimen.loadingSquareSize), Integer.valueOf(R.dimen.loadingSquareExpandSize));
            if (this.M != null) {
                this.O.setVisibility(8);
                this.i.setVisibility(4);
                this.N.setVisibility(0);
                this.M.a();
            }
        }
    }

    private void s() {
        if (this.N != null && this.M != null) {
            this.O.setVisibility(0);
            this.N.setVisibility(8);
            this.M.c();
            this.i.setVisibility(0);
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onChatMessagesRetrievedEvent(com.roblox.client.e.f fVar) {
        if (this.y == fVar.d()) {
            s();
            if (fVar.a() > 0) {
                boolean zB = fVar.b();
                if (!zB) {
                    com.roblox.client.chat.a.h hVarD = this.w.d();
                    zB = hVarD == null || fVar.c().get(fVar.c().size() + (-1)).b() > hVarD.b();
                }
                boolean z = zB && u();
                if (fVar.b()) {
                    com.roblox.client.chat.a.a.a().a(fVar.d(), fVar.c().get(fVar.c().size() - 1).d(), false);
                }
                x();
                if (z) {
                    t();
                } else if (fVar.b()) {
                    v();
                }
            }
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onSignalRConnectivityChangeEvent(v vVar) {
        boolean z = false;
        com.roblox.client.chat.a.a.a().i();
        if (vVar.a() && this.y != -1) {
            if (vVar.b()) {
                if (!this.w.isEmpty()) {
                    z = true;
                } else {
                    q();
                }
            }
            String strI = this.z.i();
            if (this.z != null) {
                ArrayList<Long> arrayListH = this.z.h();
                if (arrayListH.size() > 0 && RobloxSettings.isPhone() && "OneToOneConversation".equals(strI)) {
                    com.roblox.client.i.g.a().a(new q(arrayListH));
                }
            }
        }
        d(z);
        u_();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onChatConversationUpdatedEvent(com.roblox.client.e.e eVar) {
        if (eVar.a() != null && eVar.a().c() == this.y) {
            com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "update conversation");
            this.z = com.roblox.client.chat.a.a.a().c(this.y);
            if (this.z != null) {
                this.v.a(this.z);
                this.f6579d.setTitle(this.z.b());
            }
            boolean zU = u();
            x();
            if (zU) {
                t();
            }
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onAvatarHeadshotsRetrievedEvent(com.roblox.client.e.c cVar) {
        if (cVar.a() != null && !cVar.a().isEmpty() && this.z != null) {
            HashSet hashSet = new HashSet(cVar.a());
            Iterator<com.roblox.client.chat.a.m> it = this.z.d().iterator();
            while (it.hasNext()) {
                if (hashSet.contains(Long.valueOf(it.next().a()))) {
                    x();
                    return;
                }
            }
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onChatTypingEvent(com.roblox.client.e.i iVar) {
        b("onChatTypingEvent() " + iVar.a() + " " + iVar.c());
        if (iVar.a() == this.y) {
            com.roblox.client.chat.a.a.a().a(iVar.a(), iVar.b(), iVar.c());
            boolean zU = u();
            x();
            if (zU) {
                t();
            }
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onUserStatusUpdatedEvent(z zVar) {
        com.roblox.client.chat.a.i iVarC;
        if (this.z != null) {
            long jG = this.z.g();
            if (zVar.a(jG) && (iVarC = n.a().c(jG)) != null) {
                if (iVarC.a() == 2) {
                    a(this.z);
                } else {
                    this.l.setVisibility(8);
                }
            }
        }
    }

    private void t() {
        this.i.setSelection(this.w.size() - 1);
    }

    private boolean u() {
        return this.i.getLastVisiblePosition() >= this.i.getAdapter().getCount() + (-4);
    }

    private void v() {
        this.i.postDelayed(new Runnable() { // from class: com.roblox.client.chat.f.7
            @Override // java.lang.Runnable
            public void run() {
                f.this.w();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        com.roblox.client.chat.a.h hVarD = com.roblox.client.chat.a.a.a().d(this.y);
        this.u.setVisibility(hVarD != null && !hVarD.k() && this.i.getLastVisiblePosition() != this.v.getCount() + (-1) ? 0 : 8);
    }

    @Override // com.roblox.client.chat.b, com.roblox.client.components.a
    public boolean d() {
        c();
        return true;
    }

    private class b implements a.InterfaceC0106a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f6605b;

        public b(f fVar) {
            this(null);
        }

        public b(String str) {
            this.f6605b = str;
        }

        @Override // com.roblox.client.h.a.InterfaceC0106a
        public void a(ArrayList<com.roblox.client.chat.a.h> arrayList) {
            com.roblox.client.chat.a.h hVarY;
            if (arrayList != null && arrayList.size() == 0) {
                if (this.f6605b != null) {
                    com.roblox.client.chat.a.h hVarB = f.this.w.b(this.f6605b);
                    if (hVarB != null) {
                        long jB = hVarB.b();
                        if (jB > f.this.D) {
                            f.this.D = jB;
                            f.this.b("CF RetrieveMessagesCallback.onChatMessagesRetrieved() confirm nothingLeftTimestamp:" + f.this.D);
                        }
                    }
                } else if (!f.this.v.isEmpty() && (hVarY = f.this.y()) != null && hVarY.b() > f.this.D) {
                    f.this.D = hVarY.b();
                    f.this.b("CF RetrieveMessagesCallback.onChatMessagesRetrieved() retrieve nothingLeftTimestamp:" + f.this.D);
                }
            }
            if (this.f6605b != null) {
                f.this.A = false;
                f.this.b("CF confirmJob complete");
            } else {
                f.this.B = false;
                f.this.b("CF retrieveJob complete");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        d(false);
    }

    private void d(boolean z) {
        com.roblox.client.chat.a.h hVarA;
        View viewFindViewById;
        int firstVisiblePosition = this.i.getFirstVisiblePosition();
        if (firstVisiblePosition != 0 || this.i.getChildCount() == this.w.size()) {
            View childAt = this.i.getChildAt(this.i.getHeaderViewsCount());
            int top = childAt == null ? 0 : childAt.getTop();
            if (firstVisiblePosition == 0 && childAt != null && this.E < 0 && (viewFindViewById = childAt.findViewById(R.id.message_time)) != null) {
                this.E = viewFindViewById.getHeight();
            }
            if (this.w.isEmpty()) {
                hVarA = null;
            } else {
                hVarA = this.v.getItem(firstVisiblePosition);
            }
            if (z) {
                a(this.y);
            }
            this.v.a();
            com.roblox.client.chat.a.c cVarA = com.roblox.client.chat.a.a.a().a(this.y);
            this.w.clear();
            this.w.a(cVarA);
            if ("OneToOneConversation".equals(this.z.i())) {
                ArrayList<Long> arrayListF = com.roblox.client.chat.a.a.a().f(this.y);
                if (arrayListF != null && arrayListF.size() > 0) {
                    com.roblox.client.chat.a.k kVar = new com.roblox.client.chat.a.k(arrayListF);
                    kVar.b("USER_TYPING_CLIENT_ID");
                    this.w.a(kVar);
                    a(this.y, arrayListF.get(0).longValue());
                } else {
                    this.w.c("USER_TYPING_CLIENT_ID");
                }
            }
            this.i.setAdapter((ListAdapter) this.v);
            if (hVarA != null && this.w.size() > 0) {
                int iA = this.v.a(hVarA);
                this.i.setSelectionFromTop(iA, (firstVisiblePosition != 0 || iA <= 0 || this.v.b(iA)) ? top : this.E + top);
            }
        }
    }

    private void a(final long j, final long j2) {
        if ("OneToOneConversation".equals(this.z.i())) {
            if (this.J != null) {
                this.I.removeCallbacks(this.J);
            }
            this.J = new Runnable() { // from class: com.roblox.client.chat.f.8
                @Override // java.lang.Runnable
                public void run() {
                    boolean zA = com.roblox.client.chat.a.a.a().a(j, j2, false);
                    f.this.b("clearTypingRunnable.run() updated:" + zA);
                    if (zA) {
                        f.this.x();
                    }
                    f.this.J = null;
                }
            };
            this.I.postDelayed(this.J, com.roblox.client.b.m());
        }
    }

    public class a implements AbsListView.OnScrollListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f6601c;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.roblox.client.chat.a.h[] f6600b = new com.roblox.client.chat.a.h[2];

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f6602d = false;

        public a(int i) {
            this.f6601c = 5;
            this.f6601c = i;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            if (i + i2 == i3) {
                if (!this.f6602d) {
                    this.f6602d = true;
                    f.this.w();
                }
            } else {
                this.f6602d = false;
            }
            if (RealtimeService.a()) {
                if (!f.this.B) {
                    f.this.B = true;
                    if (f.this.v.isEmpty() || i > this.f6601c) {
                        f.this.B = false;
                    } else {
                        com.roblox.client.chat.a.h hVarY = f.this.y();
                        if (hVarY != null && hVarY.b() > f.this.D) {
                            String strE = hVarY.e();
                            f.this.b("CF ConversationScrollListener.onScroll() LOAD");
                            f.this.a(f.this.y, 30, strE);
                        } else if (hVarY == null) {
                            f.this.b("CF ConversationScrollListener.onScroll() LOAD null");
                            f.this.a(f.this.y, 30, (String) null);
                        } else {
                            f.this.B = false;
                        }
                    }
                }
                if (!f.this.A) {
                    f.this.A = true;
                    a(i, i2, this.f6600b);
                    if (this.f6600b[0] == null) {
                        f.this.A = false;
                    } else {
                        String strE2 = this.f6600b[1] != null ? this.f6600b[1].e() : null;
                        String strI = this.f6600b[1] != null ? this.f6600b[1].i() : null;
                        if (this.f6600b[0].b() > f.this.D) {
                            f.this.b("CF ConversationScrollListener.onScroll() next:" + strI);
                            f.this.a(f.this.y, 30, strE2, this.f6600b[0].e());
                        } else {
                            com.roblox.client.chat.a.a.a().a(f.this.y).a(this.f6600b[0].e(), false);
                            f.this.A = false;
                        }
                    }
                }
                if (!f.this.C && f.this.v.getCount() > 0) {
                    f.this.C = true;
                    com.roblox.client.chat.a.h hVarA = f.this.v.getItem((i + i2) - 1);
                    if (hVarA == null || hVarA.k() || hVarA.e() == null) {
                        f.this.C = false;
                    } else {
                        f.this.b("CF ConversationScrollListener.onScroll() markAsRead:" + hVarA.i());
                        com.roblox.client.i.g.a().a(new com.roblox.client.h.g(f.this.y, hVarA.e(), new g.a() { // from class: com.roblox.client.chat.f.a.1
                            @Override // com.roblox.client.h.g.a
                            public void a(boolean z) {
                                f.this.C = false;
                            }
                        }));
                    }
                }
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }

        private void a(int i, int i2, com.roblox.client.chat.a.h[] hVarArr) {
            com.roblox.client.chat.a.h hVarA;
            hVarArr[0] = null;
            hVarArr[1] = null;
            if (f.this.w.b() != 0) {
                int i3 = (i + i2) - 1;
                while (i3 >= i) {
                    com.roblox.client.chat.a.h hVarA2 = f.this.v.getItem(i3);
                    if (!f.this.w.a(hVarA2.e())) {
                        i3--;
                    } else {
                        hVarArr[0] = hVarA2;
                        do {
                            i3++;
                            if (i3 < f.this.v.getCount()) {
                                hVarA = f.this.v.getItem(i3);
                            } else {
                                return;
                            }
                        } while (hVarA.e() == null);
                        hVarArr[1] = hVarA;
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.roblox.client.chat.a.h y() {
        for (int i = 0; i < this.v.getCount(); i++) {
            if (this.v.getItem(i).e() != null) {
                return this.v.getItem(i);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
    }

    @Override // com.roblox.client.chat.d.c
    public void a(String str, String str2, long j) {
        com.roblox.client.chat.a.c cVarA = com.roblox.client.chat.a.a.a().a(j);
        com.roblox.client.chat.a.h hVarD = cVarA.d(str);
        if (hVarD != null) {
            hVarD.b(cVarA.c() + 1);
            x();
            com.roblox.client.i.g.a().a(new com.roblox.client.h.h(j, str2, new h.a() { // from class: com.roblox.client.chat.f.9
                @Override // com.roblox.client.h.h.a
                public void a(String str3) {
                    f.this.x();
                }

                @Override // com.roblox.client.h.h.a
                public void a(String str3, String str4) {
                    f.this.x();
                }
            }, str));
        }
    }
}
