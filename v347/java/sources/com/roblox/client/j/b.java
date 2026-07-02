package com.roblox.client.j;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.support.v4.app.h;
import com.roblox.client.R;
import com.roblox.client.i;
import com.roblox.client.locale.f;
import com.roblox.client.m;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f7218b = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m f7219a;

    public interface a {
        void a();
    }

    public static boolean a() {
        return f7218b;
    }

    public b(m mVar) {
        this.f7219a = mVar;
    }

    public void b() {
        if (this.f7219a != null) {
            i.b("logout");
            final h activity = this.f7219a.getActivity();
            new AlertDialog.Builder(activity).setMessage(R.string.Application_Logout_Response_LogoutConfirmation).setPositiveButton(R.string.Application_Logout_Action_Logout, new DialogInterface.OnClickListener() { // from class: com.roblox.client.j.b.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    i.b("logout", "yes");
                    dialogInterface.dismiss();
                    if (com.roblox.client.b.o()) {
                        b.this.a(activity, b.this.a(activity, activity.getString(R.string.Authentication_Logout_Label_LoggingOut), activity.getString(R.string.Authentication_Logout_Label_LoggingOutOfAccount)));
                    } else {
                        com.roblox.client.startup.b.a(activity).a((Context) activity, true);
                    }
                }
            }).setNegativeButton(R.string.CommonUI_Controls_Action_Cancel, new DialogInterface.OnClickListener() { // from class: com.roblox.client.j.b.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    i.b("logout", "no");
                    dialogInterface.dismiss();
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.roblox.client.j.b.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    i.b("logout", "no");
                    dialogInterface.dismiss();
                }
            }).create().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ProgressDialog a(Context context, String str, String str2) {
        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setTitle(str);
        progressDialog.setMessage(str2);
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.setCanceledOnTouchOutside(false);
        progressDialog.setOnCancelListener(null);
        return progressDialog;
    }

    void a(final Context context, final ProgressDialog progressDialog) {
        if (context != null) {
            progressDialog.show();
            f7218b = true;
            com.roblox.client.startup.b.a(context).a(context, new a() { // from class: com.roblox.client.j.b.4
                @Override // com.roblox.client.j.b.a
                public void a() {
                    new com.roblox.client.locale.f().a(context, new f.a() { // from class: com.roblox.client.j.b.4.1
                        @Override // com.roblox.client.locale.f.a
                        public void a() {
                            progressDialog.dismiss();
                            com.roblox.client.i.e.a().a(2);
                            boolean unused = b.f7218b = false;
                        }
                    });
                }
            });
        }
    }
}
