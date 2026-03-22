package com.roblox.client.startup;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import com.roblox.client.o;
import com.roblox.client.u;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends androidx.fragment.app.b {
    private static final long ag = TimeUnit.DAYS.toMillis(1);
    private static boolean ah = false;

    public static boolean ao() {
        if (!com.roblox.client.b.bE() || ah || Build.VERSION.SDK_INT >= com.roblox.client.b.bC()) {
            return false;
        }
        if (com.roblox.client.b.bF()) {
            return true;
        }
        return new Date().after(new Date(u.g().getLong("deprecation_notice_previous_reminder", 0L) + ag));
    }

    public static void a(androidx.fragment.app.c cVar) {
        ah = true;
        new a().a(cVar.j(), "notice_dialog");
        u.g().edit().putLong("deprecation_notice_previous_reminder", new Date().getTime()).apply();
    }

    @Override // androidx.fragment.app.b
    public Dialog a(Bundle bundle) {
        String strA;
        AlertDialog.Builder builder = new AlertDialog.Builder(r());
        try {
            strA = a(o.j.Deprecation_Notice_Message_With_Date, DateFormat.getDateInstance().format(new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(com.roblox.client.b.bB())), Build.VERSION.RELEASE, com.roblox.client.b.bD());
        } catch (ParseException unused) {
            strA = a(o.j.Deprecation_Notice_Message, Build.VERSION.RELEASE, com.roblox.client.b.bD());
        }
        builder.setTitle(o.j.Deprecation_Notice_Title);
        builder.setMessage(strA);
        builder.setPositiveButton(o.j.Deprecation_Notice_Ok, new DialogInterface.OnClickListener() { // from class: com.roblox.client.startup.a.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        return builder.create();
    }
}
