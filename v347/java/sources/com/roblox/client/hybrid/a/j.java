package com.roblox.client.hybrid.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.v7.app.b;
import android.text.Html;
import android.text.TextUtils;
import com.roblox.a.c;
import com.roblox.client.R;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class j extends com.roblox.a.c {
    public j() {
        super("Social");
        a("presentShareDialog", new a());
    }

    private class a implements c.a {
        private a() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            String string;
            String string2;
            JSONObject jSONObjectC = aVar.c();
            String strOptString = jSONObjectC.optString("text");
            String strOptString2 = jSONObjectC.optString("link");
            com.roblox.client.i.f.a().a("Android-AppMain-GameShare-ChooserShown");
            if (!TextUtils.isEmpty(strOptString2) && strOptString != null) {
                if (Build.VERSION.SDK_INT >= 24) {
                    string = Html.fromHtml(strOptString, 63).toString();
                    string2 = Html.fromHtml(strOptString2, 63).toString();
                } else {
                    string = Html.fromHtml(strOptString).toString();
                    string2 = Html.fromHtml(strOptString2).toString();
                }
                String string3 = aVar.e().getString(R.string.Game_Launch_Description_ShareGame, string);
                Intent intent = new Intent();
                intent.setAction("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.TEXT", string3 + " " + string2);
                intent.putExtra("android.intent.extra.SUBJECT", string3);
                if (com.roblox.client.util.h.a(aVar.e(), intent)) {
                    Intent intent2 = new Intent();
                    intent2.setAction("android.intent.action.PICK_ACTIVITY");
                    intent2.putExtra("android.intent.extra.INTENT", intent);
                    ((Activity) aVar.e()).startActivityForResult(intent2, 10103);
                    aVar.a(true, null);
                    return;
                }
                a(aVar.e(), R.string.Game_Launch_Response_NoSharingAppInstalled);
                aVar.a(false, null);
                return;
            }
            a(aVar.e(), R.string.Game_Launch_Response_ShareGameError);
            aVar.a(false, null);
        }

        private void a(Context context, int i) {
            b.a aVar = new b.a(context);
            aVar.b(context.getString(i));
            aVar.c(R.string.CommonUI_Features_Action_Ok, null);
            aVar.b().show();
        }
    }
}
