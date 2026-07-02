package com.roblox.client.k;

import android.support.v7.widget.Toolbar;
import android.view.View;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.components.p;
import com.roblox.client.k.c;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class b extends c {
    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        org.greenrobot.eventbus.c.a().a(this);
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStop() {
        org.greenrobot.eventbus.c.a().b(this);
        super.onStop();
    }

    @Override // com.roblox.client.k.c
    protected void a(Toolbar toolbar) {
        toolbar.setTitle(R.string.CommonUI_Features_Label_About);
        p.a(toolbar, getContext(), new View.OnClickListener() { // from class: com.roblox.client.k.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.this.getActivity().onBackPressed();
            }
        });
    }

    @Override // com.roblox.client.k.c
    protected ArrayList<c.g> a() {
        ArrayList<c.g> arrayList = new ArrayList<>();
        arrayList.add(new c.h(false, true));
        arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_AboutUs, 0, "ABOUT_US_TAG"));
        arrayList.add(new c.d(false));
        arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_Careers, 0, "CAREERS_TAG"));
        arrayList.add(new c.d(false));
        arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_Parents, 0, "PARENTS_TAG"));
        arrayList.add(new c.d(false));
        arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_Terms, 0, "TERMS_TAG"));
        arrayList.add(new c.d(false));
        arrayList.add(new c.C0111c(R.string.CommonUI_Features_Label_Privacy, 0, "PRIVACY_TAG"));
        arrayList.add(new c.h(true, false));
        arrayList.add(new c.i(e(), f()));
        arrayList.add(new c.h(false, false));
        return arrayList;
    }

    private String e() {
        String str = getString(R.string.CommonUI_Features_Label_Version) + "   2.347.225742";
        if (!c()) {
            return str + "   googleProd";
        }
        return str;
    }

    private String f() {
        return !c() ? RobloxSettings.getBaseUrlValue() : "";
    }

    public boolean c() {
        return "prod".equalsIgnoreCase("prod") && "release".equalsIgnoreCase("release");
    }

    @Override // com.roblox.client.k.c
    protected String b() {
        return "rbx.more.about";
    }
}
