package com.roblox.client.k;

import android.support.v7.widget.Toolbar;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.components.p;
import com.roblox.client.h.k;
import com.roblox.client.i.g;
import com.roblox.client.k.c;
import java.util.ArrayList;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;

/* JADX INFO: loaded from: classes.dex */
public class a extends c {
    private C0110a e;

    /* JADX INFO: renamed from: com.roblox.client.k.a$a, reason: collision with other inner class name */
    protected class C0110a extends c.C0111c {
        public C0110a(String str) {
            super(R.string.CommonUI_Features_Label_Settings, R.drawable.more_page_icon_settings, str);
        }

        @Override // com.roblox.client.k.c.C0111c
        public int a() {
            return com.roblox.client.q.d.a().h().b();
        }
    }

    @Override // com.roblox.client.k.c
    protected ArrayList<c.g> a() {
        ArrayList<c.g> arrayList = new ArrayList<>();
        arrayList.add(new c.h(false, true));
        if (RobloxSettings.isPhone()) {
            arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_Catalog, R.drawable.more_page_icon_catalog, "CATALOG_TAG"));
            arrayList.add(new c.d(this));
        }
        arrayList.add(new c.a());
        arrayList.add(new c.h(this));
        arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_Profile, R.drawable.more_page_icon_profile, "PROFILE_TAG"));
        arrayList.add(new c.d(this));
        if (RobloxSettings.isPhone()) {
            arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_Friends, R.drawable.more_page_icon_friends, "FRIENDS_TAG"));
            arrayList.add(new c.d(this));
        }
        arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_Groups, R.drawable.more_page_icon_groups, "GROUPS_TAG"));
        arrayList.add(new c.d(this));
        arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_Inventory, R.drawable.more_page_icon_inventory, "INVENTORY_TAG"));
        arrayList.add(new c.d(this));
        arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_Messages, R.drawable.more_page_icon_messages, "MESSAGES_TAG"));
        if (com.roblox.client.b.bG()) {
            arrayList.add(new c.d(this));
            arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_CreateGames, R.drawable.more_page_icon_create, "CREATE_GAMES_TAG"));
        }
        arrayList.add(new c.h(this));
        arrayList.add(new c.b());
        arrayList.add(new c.d(this));
        arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_Blog, R.drawable.more_page_icon_blog, "BLOG_TAG"));
        arrayList.add(new c.h(this));
        if (com.roblox.client.b.bF() && com.roblox.client.q.d.a().i() != null && com.roblox.client.q.d.a().i().size() > 0) {
            this.e = new C0110a("SETTINGS_GROUPS_TAG");
        } else {
            this.e = new C0110a("SETTINGS_TAG");
        }
        arrayList.add(this.e);
        arrayList.add(new c.d(this));
        arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_About, R.drawable.more_page_icon_company, "ABOUT_TAG"));
        arrayList.add(new c.d(this));
        arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_Help, R.drawable.more_page_icon_help, "HELP_TAG"));
        arrayList.add(new c.h(this));
        arrayList.add(new c.e());
        arrayList.add(new c.h(true, false));
        return arrayList;
    }

    @Override // com.roblox.client.k.c
    protected String b() {
        return "rbx.more";
    }

    @Override // android.support.v4.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (!z && com.roblox.client.q.d.a().h().b() > 0) {
            g.a().a(new k(null));
        }
    }

    @j(a = ThreadMode.MAIN)
    public void onAccountNotificationsUpdateEvent(com.roblox.client.e.a aVar) {
        com.roblox.client.util.g.a(b(), "onAccountNotificationsUpdateEvent() update");
        a(this.e);
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        org.greenrobot.eventbus.c.a().a(this);
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        org.greenrobot.eventbus.c.a().b(this);
    }

    @Override // com.roblox.client.k.c
    protected void a(Toolbar toolbar) {
        toolbar.setTitle(R.string.CommonUI_Features_Label_More);
        p.a(toolbar, getContext(), null, RobloxSettings.isShowVisibleAgeOnMorePage());
    }
}
