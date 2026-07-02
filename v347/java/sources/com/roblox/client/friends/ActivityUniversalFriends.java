package com.roblox.client.friends;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.components.p;
import com.roblox.client.contacts.h;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.friends.a;
import com.roblox.client.friends.a.a;
import com.roblox.client.friends.b.a;
import com.roblox.client.friends.c;
import com.roblox.client.k;
import com.roblox.client.q.d;
import com.roblox.client.util.g;
import com.roblox.client.util.i;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ActivityUniversalFriends extends k implements h.a, a.InterfaceC0102a, a.InterfaceC0103a, a.InterfaceC0104a, c.b {
    private int m;
    private TabLayout p;
    private int q;
    private b r;
    private c.a s;

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_universal_friends);
        this.m = 4;
        Toolbar toolbar = (Toolbar) findViewById(R.id.universal_friends_toolbar_include);
        if (toolbar != null) {
            a(toolbar);
            android.support.v7.app.a aVarF = f();
            if (aVarF != null) {
                aVarF.a(R.string.Features_UniversalFriender_Label_AddFriends);
                aVarF.b(true);
                aVarF.a(false);
                p.b(toolbar, this);
            }
        }
        this.r = new b(this, R.id.container);
        this.p = (TabLayout) findViewById(R.id.universal_friends_tab_layout);
        this.p.a(a(R.string.Features_UniversalFriender_Label_Requests, R.drawable.pending_requests_tab_main_icon, R.layout.universal_friends_tab_item_layout, 0), 0);
        if (Build.VERSION.SDK_INT >= 23) {
            this.p.a(a(R.string.Features_UniversalFriender_Label_Nearby, R.drawable.nearby_tab_main_icon, R.layout.universal_friends_tab_item_layout, 1), 1);
        }
        if (!d.a().g() && Build.VERSION.SDK_INT >= 23) {
            this.p.a(a(R.string.Features_UniversalFriender_Label_Contacts, R.drawable.contacts_tab_main_icon, R.layout.universal_friends_tab_item_layout, 2), 2);
        }
        this.p.a(new TabLayout.b() { // from class: com.roblox.client.friends.ActivityUniversalFriends.1
            @Override // android.support.design.widget.TabLayout.b
            public void a(TabLayout.e eVar) {
                g.c("ActivityUniversalFriends", "onTabSelected. tab: " + eVar.a());
                View viewB = eVar.b();
                if (viewB == null) {
                    g.d("ActivityUniversalFriends", "Tab customView is null on tabSelected.");
                    return;
                }
                ImageView imageView = (ImageView) viewB.findViewById(android.R.id.icon);
                ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                layoutParams.height += 10;
                layoutParams.width += 10;
                imageView.setLayoutParams(layoutParams);
                switch (((Integer) eVar.a()).intValue()) {
                    case 0:
                        ActivityUniversalFriends.this.r.g();
                        break;
                    case 1:
                        ActivityUniversalFriends.this.z();
                        imageView.setBackgroundResource(R.drawable.nearby_main_icon_anim);
                        imageView.setImageResource(android.R.color.transparent);
                        ((AnimationDrawable) imageView.getBackground()).start();
                        break;
                    case 2:
                        ActivityUniversalFriends.this.m();
                        break;
                    default:
                        g.d("ActivityUniversalFriends", "Selected tab tag not recognized.");
                        break;
                }
                ActivityUniversalFriends.this.q = eVar.d();
            }

            @Override // android.support.design.widget.TabLayout.b
            public void b(TabLayout.e eVar) {
                View viewB = eVar.b();
                if (viewB == null) {
                    g.d("ActivityUniversalFriends", "Tab customView is null on tabUnselected.");
                    return;
                }
                ImageView imageView = (ImageView) viewB.findViewById(android.R.id.icon);
                r1.height -= 10;
                r1.width -= 10;
                imageView.setLayoutParams(imageView.getLayoutParams());
                if (1 == ((Integer) eVar.a()).intValue()) {
                    imageView.setBackgroundResource(R.drawable.tab_selector);
                    imageView.setImageResource(R.drawable.nearby_tab_main_icon);
                }
            }

            @Override // android.support.design.widget.TabLayout.b
            public void c(TabLayout.e eVar) {
                g.c("ActivityUniversalFriends", "onTabReselected. tab: " + eVar.a());
                switch (((Integer) eVar.a()).intValue()) {
                    case 0:
                        ActivityUniversalFriends.this.r.g();
                        break;
                    case 1:
                        ActivityUniversalFriends.this.z();
                        break;
                    case 2:
                        ActivityUniversalFriends.this.m();
                        break;
                }
            }
        });
        this.s = new UniversalFriendsPresenter(getLifecycle(), this);
        if (bundle != null) {
            this.q = bundle.getInt("selected_tab_index_bundle_key");
        } else {
            this.q = 0;
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.universal_friends_list_menu, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
            case R.id.menu_search_friends /* 2131231019 */:
                this.r.a(this);
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onResume() {
        super.onResume();
        g.c("ActivityUniversalFriends", "onResume.");
        if (this.q == 0) {
            this.r.g();
            return;
        }
        TabLayout.e eVarA = this.p.a(this.q);
        if (eVarA != null) {
            eVarA.f();
        }
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        D();
    }

    @Override // android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("selected_tab_index_bundle_key", this.q);
    }

    @Override // android.support.v4.app.h, android.app.Activity, android.support.v4.app.a.InterfaceC0014a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 100) {
            g.c("ActivityUniversalFriends", "Received response for contact permissions request.");
            if (i.a(iArr)) {
                g.c("ActivityUniversalFriends", "Read Contacts permission granted. Fetching contacts.");
                a(1, true);
                return;
            } else {
                g.c("ActivityUniversalFriends", "Contacts permissions were NOT granted.");
                a(1, false);
                return;
            }
        }
        if (i == 101) {
            g.c("ActivityUniversalFriends", "Received response for record_audio permissions request.");
            if (i.a(iArr)) {
                g.c("ActivityUniversalFriends", "Record_audio permission granted.");
                a(0, true);
                return;
            } else {
                g.c("ActivityUniversalFriends", "Record_audio permissions were NOT granted.");
                a(0, false);
                return;
            }
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    private TabLayout.e a(int i, int i2, int i3, int i4) {
        return this.p.a().a(i3).c(i2).d(i).a(Integer.valueOf(i4));
    }

    private void a(String str, int i) {
        android.support.v4.app.a.a(this, new String[]{str}, i);
        if (i == 100) {
            v();
        } else if (i == 101) {
            B();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (android.support.v4.app.a.a((Context) this, "android.permission.READ_CONTACTS") == 0) {
            g.c("ActivityUniversalFriends", "Contact permissions have already been granted. Displaying contact details.");
            this.r.a();
        } else if (w() && !android.support.v4.app.a.a((Activity) this, "android.permission.READ_CONTACTS")) {
            g.c("ActivityUniversalFriends", "Contact permissions have already been denied once and the userselected 'Don't ask me again'.");
            this.r.a(1, R.string.Features_FriendFinder_Action_NeedContactsAccess);
        } else {
            g.c("ActivityUniversalFriends", "Contact permissions have NOT been granted.");
            this.r.b();
            this.r.c();
        }
    }

    private void v() {
        RobloxSettings.getKeyValues().edit().putBoolean("ContactsPermissionAlreadyAsked", true).apply();
    }

    private boolean w() {
        return RobloxSettings.getKeyValues().getBoolean("ContactsPermissionAlreadyAsked", false);
    }

    private void x() {
        if (android.support.v4.app.a.a((Activity) this, "android.permission.READ_CONTACTS")) {
            g.c("ActivityUniversalFriends", "Should show extra rationale.");
            a("android.permission.READ_CONTACTS", 100);
        } else if (w()) {
            g.b("ActivityUniversalFriends", "Already asked for the permission but no rationale needed. This means the user checked: 'Do not show again'");
            this.r.a(1, R.string.Features_FriendFinder_Action_NeedContactsAccess);
        } else {
            g.b("ActivityUniversalFriends", "Requesting the permission for the first time.");
            a("android.permission.READ_CONTACTS", 100);
        }
    }

    private void y() {
        if (android.support.v4.app.a.a((Activity) this, "android.permission.RECORD_AUDIO")) {
            g.c("ActivityUniversalFriends", "Should show extra rationale.");
            a("android.permission.RECORD_AUDIO", 101);
        } else if (A()) {
            g.b("ActivityUniversalFriends", "Already asked for the permission but no rationale needed. This means the user checked: 'Do not show again'");
            this.r.a(0, R.string.Features_Nearby_Action_NeedRecordAudioAccess);
        } else {
            g.b("ActivityUniversalFriends", "Requesting the permission for the first time.");
            a("android.permission.RECORD_AUDIO", 101);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        if (android.support.v4.app.a.a((Context) this, "android.permission.RECORD_AUDIO") == 0) {
            g.c("ActivityUniversalFriends", "Recourd audio permission have already been granted. Displaying nearby.");
            this.r.d();
        } else if (A() && !android.support.v4.app.a.a((Activity) this, "android.permission.RECORD_AUDIO")) {
            g.c("ActivityUniversalFriends", "Recourd audio permissions have already been denied once and the userselected 'Don't ask me again'.");
            this.r.a(0, R.string.Features_Nearby_Action_NeedRecordAudioAccess);
        } else {
            g.c("ActivityUniversalFriends", "Record audio permissions have NOT been granted.");
            this.r.e();
            this.r.f();
        }
    }

    private boolean A() {
        return RobloxSettings.getKeyValues().getBoolean("RecordAudioPermissionAlreadyAsked", false);
    }

    private void B() {
        RobloxSettings.getKeyValues().edit().putBoolean("RecordAudioPermissionAlreadyAsked", true).apply();
    }

    private void C() {
        com.roblox.client.i.a("contactFriendFinderGoToSettingsClicked", (List<NameValuePair>) null);
    }

    private void a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("action", str));
        com.roblox.client.i.a("contactFriendFinderTermsRequested", arrayList);
    }

    private void a(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("granted", String.valueOf(z)));
        if (i == 1) {
            com.roblox.client.i.a("contactsAccessRequested", arrayList);
        }
    }

    private void D() {
        String str = "Unknown";
        switch (this.m) {
            case 1:
                str = "BackWhileLoading";
                break;
            case 2:
                str = "BackWithContacts";
                break;
            case 3:
                str = "Error";
                break;
            case 4:
                str = "BackNoSettingsAccess";
                break;
            case 5:
                str = "EmptyContacts";
                break;
        }
        g.c("ActivityUniversalFriends", "Leaving with status: " + this.m + ".");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("action", str));
        com.roblox.client.i.a("contactFriendFinderUserLeavingEvent", arrayList);
    }

    @Override // com.roblox.client.friends.a.InterfaceC0102a
    public void e(int i) {
        if (1 == i) {
            C();
        }
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", getPackageName(), null));
        startActivity(intent);
    }

    @Override // com.roblox.client.friends.a.a.InterfaceC0103a
    public void k() {
        a("Continue");
        x();
    }

    @Override // com.roblox.client.contacts.h.a
    public void n() {
        D();
    }

    @Override // com.roblox.client.contacts.h.a
    public void d(int i) {
        this.m = i;
    }

    @Override // com.roblox.client.friends.b.a.InterfaceC0104a
    public void l() {
        y();
    }
}
