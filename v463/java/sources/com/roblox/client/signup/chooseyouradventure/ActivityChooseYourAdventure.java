package com.roblox.client.signup.chooseyouradventure;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.roblox.client.components.RbxButton;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.friends.UniversalFriendsPresenter;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.q;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivityChooseYourAdventure extends q {
    public long q;

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(o.g.activity_choose_your_adventure);
        a[] aVarArrN = n();
        TextView textView = (TextView) findViewById(o.f.title_text_view);
        textView.setText(com.roblox.client.locale.a.a.a(o.j.Features_ChooseAdv_Label_WhatsNext, new Object[0]));
        textView.setTypeface(null, 1);
        a(aVarArrN[0], o.f.choose_your_adv_first_button);
        a(aVarArrN[1], o.f.choose_your_adv_second_button);
        a(aVarArrN[2], o.f.choose_your_adv_third_button);
        final a aVar = aVarArrN[3];
        if (aVar != null) {
            RbxButton rbxButton = (RbxButton) findViewById(o.f.games_button);
            rbxButton.setText(com.roblox.client.locale.a.a.a(aVar.f7116b, new Object[0]));
            rbxButton.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.chooseyouradventure.ActivityChooseYourAdventure.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ActivityChooseYourAdventure.this.a(aVar);
                }
            });
        }
        this.q = System.currentTimeMillis();
    }

    private View a(final a aVar, int i) {
        if (aVar == null) {
            return null;
        }
        View viewFindViewById = findViewById(i);
        viewFindViewById.findViewById(o.f.info_layout).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.chooseyouradventure.ActivityChooseYourAdventure.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ActivityChooseYourAdventure.this.a(aVar);
            }
        });
        ((ImageView) viewFindViewById.findViewById(o.f.info_icon)).setImageResource(aVar.f7115a);
        TextView textView = (TextView) viewFindViewById.findViewById(o.f.main_info_text_view);
        textView.setText(com.roblox.client.locale.a.a.a(aVar.f7116b, new Object[0]));
        textView.setTypeface(null, 1);
        ((TextView) viewFindViewById.findViewById(o.f.sub_info_text_view)).setText(com.roblox.client.locale.a.a.a(aVar.f7117c, new Object[0]));
        TextView textView2 = (TextView) viewFindViewById.findViewById(o.f.permission_text_view);
        textView2.setText(com.roblox.client.locale.a.a.a(aVar.f7118d, new Object[0]));
        if (aVar.f7118d != -1) {
            textView2.setText(com.roblox.client.locale.a.a.a(aVar.f7118d, new Object[0]));
        } else {
            textView2.setVisibility(8);
        }
        viewFindViewById.setVisibility(0);
        return viewFindViewById;
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStart() {
        super.onStart();
        p.b("chooseYourAdventure");
    }

    @Override // androidx.fragment.app.c, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        p.a("chooseYourAdventure", "backButton");
        p();
    }

    private a[] n() {
        a[] aVarArr = new a[4];
        aVarArr[2] = new a(o.e.choose_adv_customize, o.j.Features_ChooseAdv_Label_CustomizeAvatar, o.j.Features_ChooseAdv_Label_AwesomeAvatar, -1, 102, "avatarButton");
        a aVar = UniversalFriendsPresenter.a() ? new a(o.e.choose_adv_nearby, o.j.Features_ChooseAdv_Label_ImNearSomeone, o.j.Features_ChooseAdv_Label_FindNearbyUsers, o.j.Features_ChooseAdv_Label_RequiresMicrophone, 100, "nearbyButton") : null;
        a aVar2 = UniversalFriendsPresenter.b() ? new a(o.e.choose_adv_vcontacts, o.j.Features_ChooseAdv_Label_KnowSomeoneOnRoblox, o.j.Features_ChooseAdv_Label_LookThroughYourContacts, o.j.Features_ChooseAdv_Label_RequiresContacts, 101, "cffButton") : null;
        a aVar3 = new a(-1, o.j.Features_ChooseAdv_Label_ShowMeTheGames, -1, -1, 103, "gamesButton");
        if (UniversalFriendsPresenter.b()) {
            aVarArr[0] = aVar;
            aVarArr[1] = aVar2;
        } else {
            aVarArr[1] = aVar;
        }
        aVarArr[3] = aVar3;
        return aVarArr;
    }

    private void p() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.q;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("time", String.valueOf(jCurrentTimeMillis)));
        p.a("timeElapsedToSelection", "chooseYourAdventure", arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a aVar) {
        p();
        p.a("chooseYourAdventure", aVar.f);
        setResult(aVar.f7119e);
        finish();
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f7115a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f7116b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f7117c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f7118d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f7119e;
        String f;

        a(int i, int i2, int i3, int i4, int i5, String str) {
            this.f7115a = i;
            this.f7116b = i2;
            this.f7117c = i3;
            this.f7118d = i4;
            this.f7119e = i5;
            this.f = str;
        }
    }
}
