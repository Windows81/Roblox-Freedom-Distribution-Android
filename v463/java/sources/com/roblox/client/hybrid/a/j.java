package com.roblox.client.hybrid.a;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.text.Html;
import android.text.TextUtils;
import androidx.appcompat.app.b;
import com.roblox.a.c;
import com.roblox.client.ae.l;
import com.roblox.client.o;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
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
            com.roblox.client.s.f.b().a("Android-AppMain-GameShare-ChooserShown");
            if (!TextUtils.isEmpty(strOptString2) && strOptString != null) {
                if (Build.VERSION.SDK_INT >= 24) {
                    string = Html.fromHtml(strOptString, 63).toString();
                    string2 = Html.fromHtml(strOptString2, 63).toString();
                } else {
                    string = Html.fromHtml(strOptString).toString();
                    string2 = Html.fromHtml(strOptString2).toString();
                }
                String string3 = aVar.e().getString(o.j.Game_Launch_Description_ShareGame, string);
                Intent intent = new Intent();
                intent.setAction("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.TEXT", string3 + " " + string2);
                intent.putExtra("android.intent.extra.SUBJECT", string3);
                if (l.a(aVar.e(), intent)) {
                    Intent intent2 = new Intent();
                    intent2.setAction("android.intent.action.PICK_ACTIVITY");
                    intent2.putExtra("android.intent.extra.INTENT", intent);
                    ((Activity) aVar.e()).startActivityForResult(intent2, 10103);
                    aVar.a(true, null);
                    return;
                }
                a(aVar.e(), o.j.Game_Launch_Response_NoSharingAppInstalled);
                aVar.a(false, null);
                return;
            }
            a(aVar.e(), o.j.Game_Launch_Response_ShareGameError);
            aVar.a(false, null);
        }

        private void a(Context context, int i) {
            b.a aVar = new b.a(context);
            aVar.b(context.getString(i));
            aVar.c(o.j.CommonUI_Features_Action_Ok, (DialogInterface.OnClickListener) null);
            aVar.b().show();
        }
    }
}
