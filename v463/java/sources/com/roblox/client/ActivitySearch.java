package com.roblox.client;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.roblox.client.components.RbxButton;
import com.roblox.client.components.RbxSearchView;
import com.roblox.client.o;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivitySearch extends q {
    private int q;
    private int r;

    public static Intent a(Context context, int i, int i2) {
        Intent intent = new Intent(context, (Class<?>) ActivitySearch.class);
        intent.putExtra("SearchTypeIntentKey", i);
        intent.putExtra("SearchHintStringResourceIdIntentKey", i2);
        return intent;
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(o.g.activity_search);
        Intent intent = getIntent();
        this.q = intent.getIntExtra("SearchTypeIntentKey", 1);
        this.r = intent.getIntExtra("SearchHintStringResourceIdIntentKey", o.j.Search_GlobalSearch_Label_SearchWord);
        if (bundle == null) {
            j().a().b(o.f.container, new v(), "SearchFragment").d();
        }
        Toolbar toolbar = (Toolbar) findViewById(o.f.search_toolbar_include);
        if (toolbar != null) {
            a(toolbar);
            androidx.appcompat.app.a aVarA = a();
            if (aVarA != null) {
                aVarA.a("");
                aVarA.b(false);
                aVarA.a(false);
            }
            View viewInflate = getLayoutInflater().inflate(o.g.activity_search_view, toolbar);
            RbxSearchView rbxSearchView = (RbxSearchView) viewInflate.findViewById(o.f.activity_search_search_view);
            EditText editText = (EditText) rbxSearchView.findViewById(rbxSearchView.getContext().getResources().getIdentifier("android:id/search_src_text", null, null));
            editText.setTextColor(-1);
            editText.setHintTextColor(-1);
            editText.setHint(getString(this.r));
            rbxSearchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.roblox.client.ActivitySearch.1
                @Override // android.widget.SearchView.OnQueryTextListener
                public boolean onQueryTextChange(String str) {
                    return false;
                }

                @Override // android.widget.SearchView.OnQueryTextListener
                public boolean onQueryTextSubmit(String str) {
                    ActivitySearch.this.a(str);
                    x.a((Activity) ActivitySearch.this);
                    return true;
                }
            });
            rbxSearchView.requestFocus();
            ((RbxButton) viewInflate.findViewById(o.f.activity_search_cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.ActivitySearch.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    p.a("searchScreen", "cancel");
                    ActivitySearch.this.finish();
                }
            });
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            p.a("searchScreen", "backButton");
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStart() {
        super.onStart();
        p.b("searchScreen");
        org.greenrobot.eventbus.c.a().a(this);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStop() {
        org.greenrobot.eventbus.c.a().b(this);
        super.onStop();
    }

    @Override // androidx.fragment.app.c, android.app.Activity
    public void onBackPressed() {
        Fragment fragmentN = n();
        if (fragmentN == null || !((v) fragmentN).at()) {
            p.a("searchScreen", "cancel");
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        String strE;
        int i = this.q;
        if (i == 1 || i == 2) {
            strE = u.e(str);
        } else if (i == 3) {
            strE = u.f(str);
        } else if (i == 4) {
            strE = u.h(str);
        } else if (i == 5) {
            strE = u.g(str);
        } else {
            com.roblox.client.ae.k.d("RobloxActivity", "Search type not recognized.");
            strE = null;
        }
        if (strE != null) {
            x.a((Activity) this);
            Fragment fragmentN = n();
            if (fragmentN != null) {
                ((v) fragmentN).f(strE);
            }
        }
    }

    private Fragment n() {
        return j().a("SearchFragment");
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigateToConversationEvent(com.roblox.client.l.i iVar) {
        long j = iVar.f6423a;
        long j2 = iVar.f6424b;
        Intent intent = new Intent();
        intent.putExtra("FEATURE_EXTRA", "CHAT_TAG");
        if (j != -1) {
            intent.putExtra("CONVERSATION_ID_EXTRA", j);
        }
        if (j2 != -1) {
            intent.putExtra("USER_ID_EXTRA", j2);
        }
        if (j2 != -1 || j != -1) {
            setResult(-1, intent);
        }
        finish();
    }
}
