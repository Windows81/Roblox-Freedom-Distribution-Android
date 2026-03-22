package com.roblox.client.ae.a;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;
import com.roblox.client.ae.l;
import com.roblox.client.o;
import com.roblox.client.u;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {
    public static void a(Context context, TextView textView) {
        String string = context.getString(o.j.CommonUI_Features_Label_TermsOfUse);
        String string2 = context.getString(o.j.CommonUI_Features_Label_PrivacyPolicy);
        a(context, textView, string + " - " + string2, string, string2);
    }

    public static void b(Context context, TextView textView) {
        String string = context.getString(o.j.CommonUI_Features_Label_TermsOfUse);
        String string2 = context.getString(o.j.CommonUI_Features_Label_PrivacyPolicy);
        a(context, textView, com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_TOSAndPrivacy, string, string2), string, string2);
    }

    public static void c(Context context, TextView textView) {
        String string = context.getString(o.j.CommonUI_Features_Label_TermsOfUse);
        String string2 = context.getString(o.j.CommonUI_Features_Label_PrivacyPolicy);
        a(context, textView, com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Label_TOSAndPrivacySMSFeeMayApply, string, string2), string, string2);
    }

    public static void a(Context context, TextView textView, String str, String str2, String str3) {
        int iIndexOf = str.indexOf(str2);
        int length = iIndexOf + str2.length();
        int iIndexOf2 = str.indexOf(str3);
        a(textView, str, new d(a(), context, str2, iIndexOf, length), new d(b(), context, str3, iIndexOf2, iIndexOf2 + str3.length()));
    }

    public static void a(TextView textView, String str, a... aVarArr) {
        textView.setText(a(new SpannableStringBuilder(str), str, aVarArr));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    static SpannableStringBuilder a(SpannableStringBuilder spannableStringBuilder, String str, a... aVarArr) {
        ArrayList arrayList = new ArrayList();
        for (a aVar : aVarArr) {
            try {
                String strA = aVar.a();
                if (str.contains(strA)) {
                    int iB = aVar.b();
                    int iC = aVar.c();
                    arrayList.add(aVar);
                    if (!a(arrayList, str, iB, iC)) {
                        spannableStringBuilder.setSpan(aVar, iB, iC, 33);
                    }
                } else {
                    com.roblox.client.analytics.d.a("Substring: " + strA + ", is not part of string: " + str);
                }
            } catch (NullPointerException e2) {
                com.roblox.client.analytics.d.a("NullPointer Exception in generateClickableString(): " + e2.getMessage());
            }
        }
        return spannableStringBuilder;
    }

    private static String a() {
        if (l.b()) {
            return "https://game.qq.com/contract.shtml";
        }
        return u.d() + "info/terms";
    }

    private static String b() {
        if (l.b()) {
            return "https://game.qq.com/privacy_guide.shtml";
        }
        return u.d() + "Info/Privacy?layout=null";
    }

    private static boolean a(ArrayList<a> arrayList, String str, int i, int i2) {
        for (int i3 = 0; i3 < arrayList.size() - 1; i3++) {
            String strA = arrayList.get(i3).a();
            int iB = arrayList.get(i3).b();
            int iC = arrayList.get(i3).c();
            if ((i >= iB && i <= iC) || (i2 >= iB && i2 <= iC)) {
                com.roblox.client.analytics.d.a("Substring: " + str.substring(i, i2) + ", overlaps with substring: " + strA);
                return true;
            }
        }
        return false;
    }
}
