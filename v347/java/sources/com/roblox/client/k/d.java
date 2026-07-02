package com.roblox.client.k;

import android.support.v7.widget.Toolbar;
import android.view.View;
import com.roblox.client.R;
import com.roblox.client.components.p;
import com.roblox.client.k.c;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class d extends c {
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
        toolbar.setTitle(R.string.CommonUI_Features_Label_Settings);
        p.a(toolbar, getContext(), new View.OnClickListener() { // from class: com.roblox.client.k.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.getActivity().onBackPressed();
            }
        });
    }

    @Override // com.roblox.client.k.c
    protected ArrayList<c.g> a() {
        ArrayList<c.g> arrayList = new ArrayList<>();
        arrayList.add(new c.h(false, true));
        ArrayList<e> arrayListI = com.roblox.client.q.d.a().i();
        if (arrayListI != null) {
            for (int i = 0; i < arrayListI.size(); i++) {
                e eVar = arrayListI.get(i);
                arrayList.add(new c.C0111c(eVar.a(), 0, eVar.c()));
                if (i + 1 < arrayListI.size()) {
                    arrayList.add(new c.d(false));
                }
            }
        }
        arrayList.add(new c.h(true, false));
        return arrayList;
    }

    @Override // com.roblox.client.k.c
    protected String b() {
        return "rbx.more.settings";
    }
}
