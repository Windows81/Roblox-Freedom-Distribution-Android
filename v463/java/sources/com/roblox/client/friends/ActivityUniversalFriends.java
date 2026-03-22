package com.roblox.client.friends;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.drawable.AnimationDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.tabs.TabLayout;
import com.roblox.client.ae.m;
import com.roblox.client.ae.s;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.components.k;
import com.roblox.client.contacts.h;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.friends.a.a;
import com.roblox.client.friends.b;
import com.roblox.client.friends.d;
import com.roblox.client.friends.nearby.a.a;
import com.roblox.client.friends.nearby.a.b;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.q;
import com.roblox.client.realtime.RealtimeService;
import com.roblox.client.u;
import com.roblox.engine.jni.NativeGLInterface;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivityUniversalFriends extends q implements h.a, a.InterfaceC0134a, b.a, d.b, a.InterfaceC0142a, b.a {
    public static int q;
    public static int r;
    private TabLayout s;
    private ServiceConnection t;
    private int u;
    private int v;
    private c w;
    private d.a x;

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(o.g.activity_universal_friends);
        this.u = 4;
        Toolbar toolbar = (Toolbar) findViewById(o.f.universal_friends_toolbar_include);
        if (toolbar != null) {
            a(toolbar);
            androidx.appcompat.app.a aVarA = a();
            if (aVarA != null) {
                aVarA.a(o.j.Features_UniversalFriender_Label_AddFriends);
                aVarA.b(true);
                aVarA.a(false);
                k.a(toolbar, this);
            }
        }
        this.x = new UniversalFriendsPresenter(g(), this, s.a(this), com.roblox.client.ad.c.a());
        this.w = new c(this, o.f.container);
        this.s = (TabLayout) findViewById(o.f.universal_friends_tab_layout);
        this.s.a(a(o.j.Features_UniversalFriender_Label_Requests, o.e.pending_requests_tab_main_icon, o.g.universal_friends_tab_item_layout, 0), 0);
        if (UniversalFriendsPresenter.a()) {
            q = 1;
            this.s.a(a(o.j.Features_UniversalFriender_Label_Nearby, o.e.nearby_tab_main_icon, o.g.universal_friends_tab_item_layout, 1), q);
        }
        if (UniversalFriendsPresenter.b()) {
            r = q + 1;
            this.s.a(a(o.j.Features_UniversalFriender_Label_Contacts, o.e.contacts_tab_main_icon, o.g.universal_friends_tab_item_layout, 2), r);
        }
        this.s.a(new TabLayout.c() { // from class: com.roblox.client.friends.ActivityUniversalFriends.1
            @Override // com.google.android.material.tabs.TabLayout.b
            public void a(TabLayout.f fVar) {
                com.roblox.client.ae.k.c("ActivityUniversalFriends", "onTabSelected. tab: " + fVar.a());
                View viewB = fVar.b();
                if (viewB == null) {
                    com.roblox.client.ae.k.d("ActivityUniversalFriends", "Tab customView is null on tabSelected.");
                    return;
                }
                ImageView imageView = (ImageView) viewB.findViewById(o.f.tab_item_image);
                ActivityUniversalFriends.this.a(fVar);
                int iIntValue = ((Integer) fVar.a()).intValue();
                if (iIntValue == 0) {
                    ActivityUniversalFriends.this.w.g();
                    p.a("universalFriends", "requestsTab");
                } else if (iIntValue == 1) {
                    ActivityUniversalFriends.this.w();
                    imageView.setBackgroundResource(o.e.nearby_main_icon_anim);
                    imageView.setImageResource(R.color.transparent);
                    ((AnimationDrawable) imageView.getBackground()).start();
                    p.a("universalFriends", "nearbyTab");
                } else if (iIntValue == 2) {
                    ActivityUniversalFriends.this.q();
                    p.a("universalFriends", "contactsTab");
                } else {
                    com.roblox.client.ae.k.e("ActivityUniversalFriends", "Selected tab tag not recognized.");
                }
                ActivityUniversalFriends.this.v = fVar.d();
            }

            @Override // com.google.android.material.tabs.TabLayout.b
            public void b(TabLayout.f fVar) {
                View viewB = fVar.b();
                if (viewB == null) {
                    com.roblox.client.ae.k.d("ActivityUniversalFriends", "Tab customView is null on tabUnselected.");
                    return;
                }
                ImageView imageView = (ImageView) viewB.findViewById(o.f.tab_item_image);
                ActivityUniversalFriends.this.b(fVar);
                if (1 == ((Integer) fVar.a()).intValue()) {
                    imageView.setBackgroundResource(o.e.tab_selector);
                    imageView.setImageResource(o.e.nearby_tab_main_icon);
                }
            }

            @Override // com.google.android.material.tabs.TabLayout.b
            public void c(TabLayout.f fVar) {
                com.roblox.client.ae.k.c("ActivityUniversalFriends", "onTabReselected. tab: " + fVar.a());
                int iIntValue = ((Integer) fVar.a()).intValue();
                if (iIntValue == 0) {
                    ActivityUniversalFriends.this.w.g();
                } else if (iIntValue == 1) {
                    ActivityUniversalFriends.this.w();
                } else {
                    if (iIntValue != 2) {
                        return;
                    }
                    ActivityUniversalFriends.this.q();
                }
            }
        });
        if (bundle != null) {
            this.v = bundle.getInt("selected_tab_index_bundle_key");
        } else {
            this.v = this.x.a(getIntent().getIntExtra("TabToShowKey", -1));
        }
        com.roblox.engine.b.a aVar = new com.roblox.engine.b.a(false);
        NativeGLInterface.nativeBroadcastEventWithNamespace(aVar.f7611b, aVar.f7612c, aVar.f7613d);
    }

    @Override // com.roblox.client.q, androidx.fragment.app.c, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 102 && i2 == -1) {
            setResult(100, intent);
            finish();
        } else if (i == 103 && i2 == -1) {
            setResult(101, intent);
            finish();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(o.h.universal_friends_list_menu, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == o.f.menu_search_friends) {
            p.a("universalFriends", "searchButton");
            this.w.a(this);
            return true;
        }
        if (itemId == 16908332) {
            p.a("universalFriends", "backButton");
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStart() {
        super.onStart();
        org.greenrobot.eventbus.c.a().a(this);
        this.t = RealtimeService.a(this);
        p.b("universalFriends");
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.roblox.client.ae.k.c("ActivityUniversalFriends", "onResume. Tab selected: " + this.v);
        TabLayout.f fVarA = this.s.a(this.v);
        if (fVarA != null) {
            if (this.v == 0) {
                a(fVarA);
                this.w.g();
            } else {
                fVarA.f();
            }
        }
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStop() {
        super.onStop();
        org.greenrobot.eventbus.c.a().b(this);
        RealtimeService.a(this.t);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        A();
        com.roblox.engine.b.a aVar = new com.roblox.engine.b.a(true);
        NativeGLInterface.nativeBroadcastEventWithNamespace(aVar.f7611b, aVar.f7612c, aVar.f7613d);
    }

    @Override // androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("selected_tab_index_bundle_key", this.v);
    }

    @Override // androidx.fragment.app.c, android.app.Activity, androidx.core.app.a.InterfaceC0025a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 100) {
            com.roblox.client.ae.k.c("ActivityUniversalFriends", "Received response for contact permissions request.");
            if (m.a(iArr)) {
                com.roblox.client.ae.k.c("ActivityUniversalFriends", "Read Contacts permission granted. Fetching contacts.");
                a(1, true);
                return;
            } else {
                com.roblox.client.ae.k.c("ActivityUniversalFriends", "Contacts permissions were NOT granted.");
                a(1, false);
                return;
            }
        }
        if (i == 101) {
            com.roblox.client.ae.k.c("ActivityUniversalFriends", "Received response for record_audio permissions request.");
            if (m.a(iArr)) {
                com.roblox.client.ae.k.c("ActivityUniversalFriends", "Record_audio permission granted.");
                a(0, true);
                return;
            } else {
                com.roblox.client.ae.k.c("ActivityUniversalFriends", "Record_audio permissions were NOT granted.");
                a(0, false);
                return;
            }
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    private TabLayout.f a(int i, int i2, int i3, int i4) {
        TabLayout.f fVarA = this.s.a().a(i3).a(Integer.valueOf(i4));
        ((ImageView) fVarA.b().findViewById(o.f.tab_item_image)).setImageResource(i2);
        ((RbxTextView) fVarA.b().findViewById(o.f.tab_item_text)).setText(i);
        return fVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TabLayout.f fVar) {
        View viewB = fVar.b();
        if (viewB == null) {
            com.roblox.client.ae.k.d("ActivityUniversalFriends", "Tab customView is null on tabSelected.");
            return;
        }
        ImageView imageView = (ImageView) viewB.findViewById(o.f.tab_item_image);
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        layoutParams.height = -1;
        layoutParams.width = -1;
        imageView.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(TabLayout.f fVar) {
        View viewB = fVar.b();
        if (viewB == null) {
            com.roblox.client.ae.k.d("ActivityUniversalFriends", "Tab customView is null on tabSelected.");
            return;
        }
        ImageView imageView = (ImageView) viewB.findViewById(o.f.tab_item_image);
        r0.height -= 10;
        r0.width -= 10;
        imageView.setLayoutParams(imageView.getLayoutParams());
    }

    private void b(String str, int i) {
        androidx.core.app.a.a(this, new String[]{str}, i);
        if (i == 100) {
            s();
        } else if (i == 101) {
            y();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (androidx.core.app.a.a((Context) this, "android.permission.READ_CONTACTS") == 0) {
            com.roblox.client.ae.k.c("ActivityUniversalFriends", "Contact permissions have already been granted. Displaying contact details.");
            this.w.a();
        } else if (t() && !androidx.core.app.a.a((Activity) this, "android.permission.READ_CONTACTS")) {
            com.roblox.client.ae.k.c("ActivityUniversalFriends", "Contact permissions have already been denied once and the userselected 'Don't ask me again'.");
            this.w.a(1, o.j.Features_FriendFinder_Action_NeedContactsAccess);
        } else {
            com.roblox.client.ae.k.c("ActivityUniversalFriends", "Contact permissions have NOT been granted.");
            this.w.b();
        }
    }

    private void s() {
        u.g().edit().putBoolean("ContactsPermissionAlreadyAsked", true).apply();
    }

    private boolean t() {
        return u.g().getBoolean("ContactsPermissionAlreadyAsked", false);
    }

    private void u() {
        if (androidx.core.app.a.a((Activity) this, "android.permission.READ_CONTACTS")) {
            com.roblox.client.ae.k.c("ActivityUniversalFriends", "Should show extra rationale.");
            b("android.permission.READ_CONTACTS", 100);
        } else if (t()) {
            com.roblox.client.ae.k.b("ActivityUniversalFriends", "Already asked for the permission but no rationale needed. This means the user checked: 'Do not show again'");
            this.w.a(1, o.j.Features_FriendFinder_Action_NeedContactsAccess);
        } else {
            com.roblox.client.ae.k.b("ActivityUniversalFriends", "Requesting the permission for the first time.");
            b("android.permission.READ_CONTACTS", 100);
        }
    }

    private void v() {
        if (androidx.core.app.a.a((Activity) this, "android.permission.RECORD_AUDIO")) {
            com.roblox.client.ae.k.c("ActivityUniversalFriends", "Should show extra rationale.");
            b("android.permission.RECORD_AUDIO", 101);
        } else if (x()) {
            com.roblox.client.ae.k.b("ActivityUniversalFriends", "Already asked for the permission but no rationale needed. This means the user checked: 'Do not show again'");
            this.w.a(0, o.j.Features_Nearby_Action_NeedRecordAudioAccess);
        } else {
            com.roblox.client.ae.k.b("ActivityUniversalFriends", "Requesting the permission for the first time.");
            b("android.permission.RECORD_AUDIO", 101);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (androidx.core.app.a.a((Context) this, "android.permission.RECORD_AUDIO") == 0) {
            com.roblox.client.ae.k.c("ActivityUniversalFriends", "Record audio permission have already been granted. Displaying nearby.");
            this.w.d();
        } else if (x() && !androidx.core.app.a.a((Activity) this, "android.permission.RECORD_AUDIO")) {
            com.roblox.client.ae.k.c("ActivityUniversalFriends", "Record audio permissions have already been denied once and the userselected 'Don't ask me again'.");
            this.w.a(0, o.j.Features_Nearby_Action_NeedRecordAudioAccess);
        } else {
            com.roblox.client.ae.k.c("ActivityUniversalFriends", "Record audio permissions have NOT been granted.");
            this.w.e();
        }
    }

    private boolean x() {
        return u.g().getBoolean("RecordAudioPermissionAlreadyAsked", false);
    }

    private void y() {
        u.g().edit().putBoolean("RecordAudioPermissionAlreadyAsked", true).apply();
    }

    private void z() {
        p.a("contactFriendFinderGoToSettingsClicked", (List<NameValuePair>) null);
    }

    private void a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("action", str));
        p.a("contactFriendFinderTermsRequested", arrayList);
    }

    private void a(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("granted", String.valueOf(z)));
        if (i == 1) {
            p.a("contactsAccessRequested", arrayList);
        } else if (i == 0) {
            p.a("universalFriends", z ? "microphoneGranted" : "microphoneDenied");
        }
    }

    private void A() {
        int i = this.u;
        String str = i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "Unknown" : "EmptyContacts" : "BackNoSettingsAccess" : "Error" : "BackWithContacts" : "BackWhileLoading";
        com.roblox.client.ae.k.c("ActivityUniversalFriends", "Leaving with status: " + this.u + ".");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("action", str));
        p.a("contactFriendFinderUserLeavingEvent", arrayList);
    }

    public void e(int i) {
        this.s.a(i).f();
    }

    @Override // com.roblox.client.friends.b.a
    public void f(int i) {
        if (1 == i) {
            z();
        }
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", getPackageName(), null));
        startActivity(intent);
    }

    @Override // com.roblox.client.friends.a.a.InterfaceC0134a
    public void n() {
        a("Continue");
        u();
    }

    @Override // com.roblox.client.contacts.h.a
    public void r() {
        A();
        this.w.c();
        e(0);
    }

    @Override // com.roblox.client.contacts.h.a
    public void d(int i) {
        this.u = i;
    }

    @Override // com.roblox.client.friends.nearby.a.a.InterfaceC0142a
    public void p() {
        v();
    }

    @Override // com.roblox.client.friends.nearby.a.b.a
    public void a(long j) {
        this.w.a(this, j);
    }

    @j(a = ThreadMode.MAIN)
    public void onNavigateToFeatureEvent(com.roblox.client.l.j jVar) {
        com.roblox.client.ae.k.c("ActivityUniversalFriends", "NavigateToFeature: " + jVar.f6425a);
        if ("NEARBY_TAG".equals(jVar.f6425a)) {
            e(q);
        }
    }
}
