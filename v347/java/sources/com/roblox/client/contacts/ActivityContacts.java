package com.roblox.client.contacts;

import android.animation.LayoutTransition;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.a;
import android.support.v4.app.l;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.components.p;
import com.roblox.client.contacts.h;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.k;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ActivityContacts extends k implements a.InterfaceC0014a, h.a {
    private LinearLayout m;
    private LinearLayout p;
    private int q;

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.q = 4;
        if (com.roblox.client.q.d.a().g() || Build.VERSION.SDK_INT < 23) {
            com.roblox.client.util.g.d("rbx.contacts", "This feature is only for users over 13 years old and Android >= 6");
            this.q = 6;
            Toast.makeText(this, R.string.Features_FriendFinder_Label_Over13Feature, 1).show();
            finish();
        }
        setContentView(R.layout.activity_contacts);
        Toolbar toolbar = (Toolbar) findViewById(R.id.contacts_toolbar_include);
        if (toolbar != null) {
            a(toolbar);
        }
        android.support.v7.app.a aVarF = f();
        aVarF.a(R.string.Features_FriendFinder_Action_Add_Contacts);
        aVarF.b(true);
        aVarF.a(false);
        p.b(toolbar, this);
        this.m = (LinearLayout) findViewById(R.id.permissions_needed_linear_layout);
        findViewById(R.id.contacts_needed_continue_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.contacts.ActivityContacts.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ActivityContacts.this.a("Continue");
                ActivityContacts.this.w();
            }
        });
        this.p = (LinearLayout) findViewById(R.id.app_settings_linear_layout);
        findViewById(R.id.app_settings_needed_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.contacts.ActivityContacts.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ActivityContacts.this.v();
            }
        });
        RbxTextView rbxTextView = (RbxTextView) findViewById(R.id.contacts_fine_print_tv);
        String string = getString(R.string.Features_FriendFinder_Label_PermissionsFinePrintLink);
        String string2 = getString(R.string.Features_FriendFinder_Response_ContactPermissionNeeded, new Object[]{string});
        int iIndexOf = string2.indexOf(string);
        com.roblox.client.util.a.b.a(rbxTextView, string2, new com.roblox.client.util.a.e(com.roblox.client.b.bD(), this, string, iIndexOf, iIndexOf + string.length()));
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.setStartDelay(2, 100L);
        layoutTransition.setStartDelay(4, 200L);
        layoutTransition.setStartDelay(3, 50L);
        ((RelativeLayout) findViewById(R.id.permissions_request_layout)).setLayoutTransition(layoutTransition);
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStart() {
        super.onStart();
        com.roblox.client.i.b("contactsPermission");
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onResume() {
        super.onResume();
        k();
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        E();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // android.support.v4.app.h, android.app.Activity, android.support.v4.app.a.InterfaceC0014a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 1) {
            com.roblox.client.util.g.b("rbx.contacts", "Received response for contact permissions request.");
            if (com.roblox.client.util.i.a(iArr)) {
                com.roblox.client.util.g.b("rbx.contacts", "Read Contacts permission granted. Fetching contacts.");
                c(true);
                return;
            } else {
                com.roblox.client.util.g.b("rbx.contacts", "Contacts permissions were NOT granted.");
                c(false);
                return;
            }
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    public void k() {
        if (android.support.v4.app.a.a((Context) this, "android.permission.READ_CONTACTS") == 0) {
            com.roblox.client.util.g.b("rbx.contacts", "Contact permissions have already been granted. Displaying contact details.");
            B();
        } else if (l() && !android.support.v4.app.a.a((Activity) this, "android.permission.READ_CONTACTS")) {
            com.roblox.client.util.g.b("rbx.contacts", "Contact permissions have already been denied once and the userselected 'Don't ask me again'.");
            y();
        } else {
            com.roblox.client.util.g.b("rbx.contacts", "Contact permissions have NOT been granted.");
            z();
            C();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        D();
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", getPackageName(), null));
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (android.support.v4.app.a.a((Activity) this, "android.permission.READ_CONTACTS")) {
            com.roblox.client.util.g.b("rbx.contacts", "Should show extra rationale.");
            x();
        } else if (l()) {
            com.roblox.client.util.g.b("rbx.contacts", "Already asked for the permission but no rationale needed. This means the user checked: 'Do not show again'");
            y();
        } else {
            com.roblox.client.util.g.b("rbx.contacts", "Requesting the permission for the first time.");
            x();
        }
    }

    private void x() {
        android.support.v4.app.a.a(this, new String[]{"android.permission.READ_CONTACTS"}, 1);
        m();
    }

    boolean l() {
        return RobloxSettings.getKeyValues().getBoolean("PermissionAlreadyAsked", false);
    }

    void m() {
        RobloxSettings.getKeyValues().edit().putBoolean("PermissionAlreadyAsked", true).apply();
    }

    private void y() {
        this.p.setVisibility(0);
        this.m.setVisibility(8);
    }

    private void z() {
        this.m.setVisibility(0);
        this.p.setVisibility(8);
    }

    private void A() {
        this.p.setVisibility(8);
        this.m.setVisibility(8);
    }

    private void B() {
        A();
        l lVarE = e();
        Fragment fragmentA = lVarE.a("FragmentContacts");
        if (fragmentA == null || !fragmentA.isAdded()) {
            android.support.v4.app.p pVarA = lVarE.a();
            pVarA.a(R.anim.slide_up_short, 0);
            pVarA.a(R.id.contacts_content_layout, h.a(), "FragmentContacts");
            pVarA.c();
        }
    }

    private void C() {
        l lVarE = e();
        Fragment fragmentA = lVarE.a("FragmentContacts");
        if (fragmentA != null && fragmentA.isAdded()) {
            android.support.v4.app.p pVarA = lVarE.a();
            pVarA.a(fragmentA);
            pVarA.c();
        }
    }

    private void c(boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("granted", String.valueOf(z)));
        com.roblox.client.i.a("contactsAccessRequested", arrayList);
    }

    private void D() {
        com.roblox.client.i.a("contactFriendFinderGoToSettingsClicked", (List<NameValuePair>) null);
    }

    private void E() {
        String str = "Unknown";
        switch (this.q) {
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
            case 6:
                str = "Under13OrAndroidUnder6";
                break;
        }
        com.roblox.client.util.g.b("rbx.contacts", "Leaving with status: " + this.q + ".");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("action", str));
        com.roblox.client.i.a("contactFriendFinderUserLeavingEvent", arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("action", str));
        com.roblox.client.i.a("contactFriendFinderTermsRequested", arrayList);
    }

    @Override // com.roblox.client.contacts.h.a
    public void n() {
        finish();
    }

    @Override // com.roblox.client.contacts.h.a
    public void d(int i) {
        this.q = i;
    }
}
