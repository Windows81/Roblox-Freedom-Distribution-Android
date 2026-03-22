package com.roblox.client;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import com.roblox.client.o;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class m extends s {
    private a as;

    public interface a {
        void a();
    }

    public void a(a aVar) {
        this.as = aVar;
    }

    @Override // androidx.fragment.app.b
    public Dialog a(Bundle bundle) {
        return new AlertDialog.Builder(r()).setMessage(o.j.Application_Logout_Response_LogoutConfirmation).setPositiveButton(o.j.Application_Logout_Action_Logout, new DialogInterface.OnClickListener() { // from class: com.roblox.client.m.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                p.a("logout", "yes");
                dialogInterface.dismiss();
                m.this.as.a();
            }
        }).setNegativeButton(o.j.CommonUI_Controls_Action_Cancel, new DialogInterface.OnClickListener() { // from class: com.roblox.client.m.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                p.a("logout", "no");
                dialogInterface.dismiss();
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.roblox.client.m.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                p.a("logout", "no");
                dialogInterface.dismiss();
            }
        }).create();
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        org.greenrobot.eventbus.c.a().a(this);
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void i() {
        org.greenrobot.eventbus.c.a().b(this);
        super.i();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigatToFeatureEvent(com.roblox.client.l.j jVar) {
        if (e()) {
            c().dismiss();
        }
    }
}
