package com.roblox.client.contacts;

import android.animation.LayoutTransition;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.a;
import androidx.fragment.app.Fragment;
import com.roblox.client.ae.k;
import com.roblox.client.ae.m;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.contacts.h;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.q;
import com.roblox.client.u;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivityContacts extends q implements a.InterfaceC0025a, h.a {
    private LinearLayout q;
    private LinearLayout r;
    private int s;

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.s = 4;
        if (com.roblox.client.ad.c.a().i() || Build.VERSION.SDK_INT < 23) {
            k.d("rbx.contacts", "This feature is only for users over 13 years old and Android >= 6");
            this.s = 6;
            Toast.makeText(this, o.j.Features_FriendFinder_Label_Over13Feature, 1).show();
            finish();
        }
        setContentView(o.g.activity_contacts);
        Toolbar toolbar = (Toolbar) findViewById(o.f.contacts_toolbar_include);
        if (toolbar != null) {
            a(toolbar);
        }
        androidx.appcompat.app.a aVarA = a();
        aVarA.a(o.j.Features_FriendFinder_Action_Add_Contacts);
        aVarA.b(true);
        aVarA.a(false);
        com.roblox.client.components.k.a(toolbar, this);
        this.q = (LinearLayout) findViewById(o.f.permissions_needed_linear_layout);
        findViewById(o.f.contacts_needed_continue_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.contacts.ActivityContacts.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ActivityContacts.this.a("Continue");
                ActivityContacts.this.t();
            }
        });
        this.r = (LinearLayout) findViewById(o.f.app_settings_linear_layout);
        findViewById(o.f.app_settings_needed_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.contacts.ActivityContacts.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ActivityContacts.this.s();
            }
        });
        RbxTextView rbxTextView = (RbxTextView) findViewById(o.f.contacts_fine_print_tv);
        String string = getString(o.j.Features_FriendFinder_Label_PermissionsFinePrintLink);
        String string2 = getString(o.j.Features_FriendFinder_Response_ContactPermissionNeeded, new Object[]{string});
        int iIndexOf = string2.indexOf(string);
        com.roblox.client.ae.a.b.a(rbxTextView, string2, new com.roblox.client.ae.a.d(com.roblox.client.b.aK(), this, string, iIndexOf, iIndexOf + string.length()));
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.setStartDelay(2, 100L);
        layoutTransition.setStartDelay(4, 200L);
        layoutTransition.setStartDelay(3, 50L);
        ((RelativeLayout) findViewById(o.f.permissions_request_layout)).setLayoutTransition(layoutTransition);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStart() {
        super.onStart();
        p.b("contactsPermission");
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onResume() {
        super.onResume();
        n();
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        B();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.c, android.app.Activity, androidx.core.app.a.InterfaceC0025a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 1) {
            k.b("rbx.contacts", "Received response for contact permissions request.");
            if (m.a(iArr)) {
                k.b("rbx.contacts", "Read Contacts permission granted. Fetching contacts.");
                a(true);
                return;
            } else {
                k.b("rbx.contacts", "Contacts permissions were NOT granted.");
                a(false);
                return;
            }
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    public void n() {
        if (androidx.core.app.a.a((Context) this, "android.permission.READ_CONTACTS") == 0) {
            k.b("rbx.contacts", "Contact permissions have already been granted. Displaying contact details.");
            y();
        } else if (p() && !androidx.core.app.a.a((Activity) this, "android.permission.READ_CONTACTS")) {
            k.b("rbx.contacts", "Contact permissions have already been denied once and the userselected 'Don't ask me again'.");
            v();
        } else {
            k.b("rbx.contacts", "Contact permissions have NOT been granted.");
            w();
            z();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        A();
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", getPackageName(), null));
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        if (androidx.core.app.a.a((Activity) this, "android.permission.READ_CONTACTS")) {
            k.b("rbx.contacts", "Should show extra rationale.");
            u();
        } else if (p()) {
            k.b("rbx.contacts", "Already asked for the permission but no rationale needed. This means the user checked: 'Do not show again'");
            v();
        } else {
            k.b("rbx.contacts", "Requesting the permission for the first time.");
            u();
        }
    }

    private void u() {
        androidx.core.app.a.a(this, new String[]{"android.permission.READ_CONTACTS"}, 1);
        q();
    }

    boolean p() {
        return u.g().getBoolean("PermissionAlreadyAsked", false);
    }

    void q() {
        u.g().edit().putBoolean("PermissionAlreadyAsked", true).apply();
    }

    private void v() {
        this.r.setVisibility(0);
        this.q.setVisibility(8);
    }

    private void w() {
        this.q.setVisibility(0);
        this.r.setVisibility(8);
    }

    private void x() {
        this.r.setVisibility(8);
        this.q.setVisibility(8);
    }

    private void y() {
        x();
        androidx.fragment.app.g gVarJ = j();
        Fragment fragmentA = gVarJ.a("FragmentContacts");
        if (fragmentA == null || !fragmentA.x()) {
            androidx.fragment.app.k kVarA = gVarJ.a();
            kVarA.a(o.a.slide_up_short, 0);
            kVarA.a(o.f.contacts_content_layout, h.aq(), "FragmentContacts");
            kVarA.c();
        }
    }

    private void z() {
        androidx.fragment.app.g gVarJ = j();
        Fragment fragmentA = gVarJ.a("FragmentContacts");
        if (fragmentA == null || !fragmentA.x()) {
            return;
        }
        androidx.fragment.app.k kVarA = gVarJ.a();
        kVarA.a(fragmentA);
        kVarA.c();
    }

    private void a(boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("granted", String.valueOf(z)));
        p.a("contactsAccessRequested", arrayList);
    }

    private void A() {
        p.a("contactFriendFinderGoToSettingsClicked", (List<NameValuePair>) null);
    }

    private void B() {
        String str;
        switch (this.s) {
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
            default:
                str = "Unknown";
                break;
        }
        k.b("rbx.contacts", "Leaving with status: " + this.s + ".");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("action", str));
        p.a("contactFriendFinderUserLeavingEvent", arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("action", str));
        p.a("contactFriendFinderTermsRequested", arrayList);
    }

    @Override // com.roblox.client.contacts.h.a
    public void r() {
        finish();
    }

    @Override // com.roblox.client.contacts.h.a
    public void d(int i) {
        this.s = i;
    }
}
