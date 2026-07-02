package com.roblox.client.chat;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.support.v4.app.Fragment;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.d.a.t;
import com.roblox.client.ActivityNativeMain;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.chat.a.n;
import com.roblox.client.h.s;
import com.roblox.client.p;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes.dex */
public class d extends BaseAdapter {
    private Context f;
    private Fragment g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private com.roblox.client.chat.a.c m;
    private com.roblox.client.chat.a.d n;
    private com.roblox.client.components.c r;
    private c t;
    private Typeface u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6541a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6542b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f6543c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6544d = 3;
    private final int e = 4;
    private GregorianCalendar o = new GregorianCalendar();
    private GregorianCalendar p = new GregorianCalendar();
    private HashSet<Long> q = new HashSet<>();
    private long s = com.roblox.client.b.M() * 1000;

    public interface c {
        void a(String str, String str2, long j);
    }

    public d(Fragment fragment) {
        this.j = 0;
        this.k = 0;
        this.l = 0;
        this.g = fragment;
        this.f = fragment.getContext();
        this.h = this.f.getResources().getColor(R.color.chatSubText);
        this.i = this.f.getResources().getColor(R.color.red);
        this.j = 0;
        this.k = (int) p.a(this.f, 10);
        this.l = (int) p.a(this.f, 3);
        if (fragment instanceof f) {
            this.t = (f) fragment;
        }
        this.u = Typeface.createFromAsset(this.f.getAssets(), "fonts/SourceSansPro-Regular.ttf");
    }

    private class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f6559a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f6560b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f6561c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f6562d;
        public ImageView e;
        public View f;
        public LinearLayout g;
        public ImageButton h;

        private e() {
        }
    }

    private class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f6553a;

        private a() {
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.chat.d$d, reason: collision with other inner class name */
    private class C0099d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f6557a;

        private C0099d() {
        }
    }

    public void a(com.roblox.client.chat.a.c cVar) {
        this.m = cVar;
        this.q.clear();
    }

    public void a(com.roblox.client.chat.a.d dVar) {
        this.n = dVar;
        this.q.clear();
    }

    public int a(com.roblox.client.chat.a.h hVar) {
        return this.m.indexOf(hVar);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.m.size();
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.roblox.client.chat.a.h getItem(int i) {
        return this.m.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 4;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i);
        if (itemViewType == -1) {
            return a(i, view, viewGroup);
        }
        if (itemViewType == 2) {
            return c(i, view, viewGroup);
        }
        if (itemViewType == 3) {
            return b(i, view, viewGroup);
        }
        return a(i, view, viewGroup, itemViewType);
    }

    private View b(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.f).inflate(R.layout.chat_system_message_item, viewGroup, false);
            C0099d c0099d = new C0099d();
            c0099d.f6557a = (TextView) view.findViewById(R.id.message);
            view.setTag(c0099d);
        }
        ((C0099d) view.getTag()).f6557a.setText(getItem(i).i());
        view.setPadding(this.l, this.l, this.l, i == getCount() + (-1) ? this.k : this.l);
        return view;
    }

    private View c(int i, View view, ViewGroup viewGroup) {
        boolean z = view == null;
        View viewA = a(i, view, viewGroup, 2);
        e eVar = (e) viewA.getTag();
        if (z) {
            View viewInflate = LayoutInflater.from(this.f).inflate(R.layout.typing_loading_squares, (ViewGroup) eVar.g, false);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, this.f.getResources().getDimensionPixelSize(R.dimen.typingProgressDotExpandSize));
            layoutParams.topMargin = (int) p.a(this.f, 6);
            viewInflate.setLayoutParams(layoutParams);
            eVar.g.addView(viewInflate);
            eVar.f6559a.setVisibility(8);
            this.r = new com.roblox.client.components.c(this.f, viewA, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, R.color.RbxGray3, Integer.valueOf(R.dimen.typingProgressDotSize), Integer.valueOf(R.dimen.typingProgressDotExpandSize));
            this.r.a();
        }
        return viewA;
    }

    public View a(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = new View(this.f);
            a aVar = new a();
            aVar.f6553a = view;
            view.setTag(aVar);
        }
        ((a) view.getTag()).f6553a.setVisibility(8);
        return view;
    }

    public View a(int i, View view, ViewGroup viewGroup, int i2) {
        View viewInflate;
        com.roblox.client.chat.a.h item = getItem(i);
        if (view == null) {
            if (i2 == 1) {
                viewInflate = LayoutInflater.from(this.f).inflate(R.layout.chat_message_artifact_self_list_item, viewGroup, false);
            } else {
                viewInflate = LayoutInflater.from(this.f).inflate(R.layout.chat_message_artifact_list_item, viewGroup, false);
            }
            e eVar = new e();
            eVar.f6559a = (TextView) viewInflate.findViewById(R.id.message_content);
            eVar.f6560b = (TextView) viewInflate.findViewById(R.id.message_time);
            eVar.f6561c = (TextView) viewInflate.findViewById(R.id.message_status);
            eVar.f6562d = (TextView) viewInflate.findViewById(R.id.message_author);
            eVar.e = (ImageView) viewInflate.findViewById(R.id.message_thumbnail);
            eVar.f = viewInflate.findViewById(R.id.message_bubble_ear);
            eVar.g = (LinearLayout) viewInflate.findViewById(R.id.message_bubble);
            eVar.h = (ImageButton) viewInflate.findViewById(R.id.resend_message);
            viewInflate.setTag(eVar);
            if (eVar.f6559a != null) {
                eVar.f6559a.setTypeface(this.u);
                eVar.f6559a.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.roblox.client.chat.d.1
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view2) {
                        ((ClipboardManager) d.this.f.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text", ((TextView) view2).getText()));
                        Toast.makeText(d.this.f, R.string.Feature_Chat_Response_CopiedToClipboard, 0).show();
                        return true;
                    }
                });
            }
        } else {
            viewInflate = view;
        }
        e eVar2 = (e) viewInflate.getTag();
        String strN = item.n();
        if (eVar2.f6559a != null) {
            if ("Moderated".equals(strN)) {
                eVar2.f6559a.setText(item.l());
            } else {
                String strI = item.i();
                if (strI != null && item.j()) {
                    eVar2.f6559a.setText(a(strI));
                    eVar2.f6559a.setMovementMethod(LinkMovementMethod.getInstance());
                } else {
                    eVar2.f6559a.setText(strI);
                }
            }
        }
        if (i2 == 1 && eVar2.f6561c != null) {
            eVar2.h.setVisibility(8);
            if (item.g() != null) {
                if ("Failure".equals(strN)) {
                    eVar2.h.setVisibility(0);
                    a(eVar2.h, item);
                }
                eVar2.f6561c.setTextColor(this.i);
                eVar2.f6561c.setVisibility(0);
                eVar2.f6561c.setText(item.h());
            } else if (item.e() == null) {
                eVar2.f6561c.setTextColor(this.h);
                eVar2.f6561c.setVisibility(0);
                eVar2.f6561c.setText(R.string.Feature_Chat_Response_Sending);
            } else if (item.o()) {
                eVar2.f6561c.setTextColor(this.h);
                eVar2.f6561c.setVisibility(0);
                eVar2.f6561c.setText(R.string.Feature_Chat_Response_NotEveryoneCanSeeMessage);
            } else {
                eVar2.f6561c.setVisibility(8);
            }
        }
        boolean z = this.n != null && "OneToOneConversation".equals(this.n.i());
        com.roblox.client.chat.a.h hVarB = this.m.b(i - 1, com.roblox.client.chat.a.h.a());
        com.roblox.client.chat.a.h hVarA = this.m.a(i + 1, com.roblox.client.chat.a.h.a());
        long jA = a(i, hVarB);
        boolean z2 = i == 0;
        if (!z2 && hVarB != null) {
            z2 = item.d() != hVarB.d();
        }
        boolean z3 = i == getCount() + (-1);
        if (!z3 && hVarA != null) {
            z3 = item.d() != hVarA.d();
        }
        if (z2 || jA > this.s) {
            eVar2.f.setVisibility(0);
            long jD = item.d();
            com.roblox.client.chat.a.m mVarA = n.a().a(jD);
            if (mVarA == null && !this.q.contains(Long.valueOf(jD))) {
                this.q.add(Long.valueOf(jD));
                com.roblox.client.i.g.a().a(new s(jD, false));
            }
            if (eVar2.e != null) {
                eVar2.e.setVisibility(0);
                if (mVarA != null && !mVarA.d().isEmpty()) {
                    t.a(this.f).a(mVarA.d()).b().a(R.drawable.ic_avatar_placement).a(eVar2.e);
                } else {
                    eVar2.e.setImageResource(R.drawable.ic_avatar_placement);
                }
                eVar2.e.setOnClickListener(new b(jD));
            }
            if (eVar2.f6562d != null) {
                if (!z) {
                    eVar2.f6562d.setText(mVarA != null ? mVarA.b() : "");
                    eVar2.f6562d.setVisibility(mVarA != null ? 0 : 8);
                } else {
                    eVar2.f6562d.setVisibility(8);
                }
            }
        } else {
            eVar2.f.setVisibility(4);
            if (eVar2.e != null) {
                eVar2.e.setVisibility(4);
            }
            if (eVar2.f6562d != null) {
                eVar2.f6562d.setVisibility(8);
            }
        }
        if (z3) {
            viewInflate.setPadding(this.j, this.j, this.j, this.k);
        } else {
            viewInflate.setPadding(this.j, this.j, this.j, this.j);
        }
        if (i == 0 || jA > this.s) {
            this.o.setTimeInMillis(System.currentTimeMillis());
            this.p.setTimeInMillis(item.b());
            if (this.o.get(1) != this.p.get(1)) {
                eVar2.f6560b.setText(item.a(3));
            } else if (this.o.get(6) == this.p.get(6)) {
                eVar2.f6560b.setText(item.a(0));
            } else if (this.o.get(4) == this.p.get(4) && this.o.get(2) == this.p.get(2)) {
                eVar2.f6560b.setText(item.a(1));
            } else {
                eVar2.f6560b.setText(item.a(2));
            }
            eVar2.f6560b.setVisibility(0);
        } else {
            eVar2.f6560b.setVisibility(8);
        }
        return viewInflate;
    }

    public void a() {
        if (this.r != null) {
            this.r.c();
            this.r = null;
        }
    }

    private void a(final ImageButton imageButton, final com.roblox.client.chat.a.h hVar) {
        final View view = (View) imageButton.getParent();
        view.post(new Runnable() { // from class: com.roblox.client.chat.d.2
            @Override // java.lang.Runnable
            public void run() {
                Rect rect = new Rect();
                imageButton.getHitRect(rect);
                rect.top -= 100;
                rect.left -= 100;
                rect.bottom += 100;
                rect.right += 100;
                view.setTouchDelegate(new TouchDelegate(rect, imageButton));
            }
        });
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.chat.d.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                hVar.h(null);
                hVar.c((String) null);
                if (d.this.t != null) {
                    d.this.t.a(hVar.f(), hVar.i(), d.this.n.c());
                }
            }
        });
    }

    public boolean b(int i) {
        return a(i, this.m.b(i + (-1), com.roblox.client.chat.a.h.a())) > this.s;
    }

    private long a(int i, com.roblox.client.chat.a.h hVar) {
        if (i <= 0) {
            return -1L;
        }
        if (hVar != null) {
            return getItem(i).b() - hVar.b();
        }
        return getItem(i).b();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        com.roblox.client.chat.a.h item = getItem(i);
        if (item instanceof com.roblox.client.chat.a.k) {
            return 2;
        }
        if (item instanceof com.roblox.client.chat.a.j) {
            return 3;
        }
        if (com.roblox.client.chat.a.h.a().contains(item.m())) {
            return !((item.d() > com.roblox.client.i.h.a().b() ? 1 : (item.d() == com.roblox.client.i.h.a().b() ? 0 : -1)) == 0) ? 0 : 1;
        }
        return -1;
    }

    private class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f6556b;

        public b(long j) {
            this.f6556b = j;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (d.this.g != null) {
                h.a(d.this.g, this.f6556b);
            }
        }
    }

    private CharSequence a(String str) {
        SpannableStringBuilder spannableStringBuilder = null;
        Matcher matcher = RobloxSettings.getGameLinkPattern().matcher(str);
        while (matcher.find()) {
            if (spannableStringBuilder == null) {
                spannableStringBuilder = new SpannableStringBuilder(str);
            }
            int iStart = matcher.start();
            int iEnd = matcher.end();
            spannableStringBuilder.setSpan(b(str.substring(iStart, iEnd)), iStart, iEnd, 33);
        }
        return spannableStringBuilder;
    }

    private ClickableSpan b(final String str) {
        return new ClickableSpan() { // from class: com.roblox.client.chat.d.4
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                android.support.v4.app.h activity;
                com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "GameLink > onClick() url:" + str);
                if (d.this.g != null) {
                    activity = d.this.g.getActivity();
                } else {
                    activity = null;
                }
                if (activity != null) {
                    ActivityNativeMain.b(activity, str, activity.getString(R.string.CommonUI_Features_Heading_GameDetails));
                }
            }
        };
    }
}
