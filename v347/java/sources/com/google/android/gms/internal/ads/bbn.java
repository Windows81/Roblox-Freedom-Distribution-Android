package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bbn {
    private static String a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }

    public static List<String> a(JSONObject jSONObject, String str) throws JSONException {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(jSONArrayOptJSONArray.length());
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            arrayList.add(jSONArrayOptJSONArray.getString(i));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static void a(Context context, String str, ii iiVar, String str2, boolean z, List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        String str3 = z ? "1" : "0";
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String strA = a(a(a(a(a(a(a(it.next(), "@gw_adlocid@", str2), "@gw_adnetrefresh@", str3), "@gw_qdata@", iiVar.r.i), "@gw_sdkver@", str), "@gw_sessid@", aoo.c()), "@gw_seqnum@", iiVar.j), "@gw_adnetstatus@", iiVar.t);
            if (iiVar.o != null) {
                strA = a(a(strA, "@gw_adnetid@", iiVar.o.f4742b), "@gw_allocid@", iiVar.o.f4744d);
            }
            String strA2 = ic.a(strA, context);
            com.google.android.gms.ads.internal.aw.e();
            jm.a(context, str, strA2);
        }
    }

    public static void a(Context context, String str, List<String> list, String str2, zzaig zzaigVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!TextUtils.isEmpty(str2) && mc.c()) {
            str2 = "fakeUserForAdDebugLog";
        }
        long jA = com.google.android.gms.ads.internal.aw.l().a();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String strA = a(a(it.next(), "@gw_rwd_userid@", Uri.encode(str2)), "@gw_tmstmp@", Long.toString(jA));
            if (zzaigVar != null) {
                strA = a(a(strA, "@gw_rwd_itm@", Uri.encode(zzaigVar.f5778a)), "@gw_rwd_amt@", Integer.toString(zzaigVar.f5779b));
            }
            com.google.android.gms.ads.internal.aw.e();
            jm.a(context, str, strA);
        }
    }

    public static boolean a(String str, int[] iArr) {
        if (TextUtils.isEmpty(str) || iArr.length != 2) {
            return false;
        }
        String[] strArrSplit = str.split("x");
        if (strArrSplit.length != 2) {
            return false;
        }
        try {
            iArr[0] = Integer.parseInt(strArrSplit[0]);
            iArr[1] = Integer.parseInt(strArrSplit[1]);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
