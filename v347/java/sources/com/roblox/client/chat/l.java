package com.roblox.client.chat;

import android.content.Context;
import android.content.DialogInterface;
import android.support.v4.app.Fragment;
import android.support.v7.app.b;
import com.roblox.client.R;

/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static DialogInterface.OnClickListener f6636a = new DialogInterface.OnClickListener() { // from class: com.roblox.client.chat.l.1
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.cancel();
        }
    };

    public static void a(Context context, long j, long j2, DialogInterface.OnClickListener onClickListener) {
        b.a aVar = new b.a(context);
        if (onClickListener == null) {
            onClickListener = new a(j, j2);
        }
        if (j2 == com.roblox.client.i.h.a().b()) {
            aVar.b(R.string.Feature_Chat_Response_LeaveConversation);
            aVar.a(R.string.Feature_Chat_Action_Leave, onClickListener);
        } else {
            aVar.b(R.string.Feature_Chat_Response_RemoveUser);
            aVar.a(R.string.Feature_Chat_Action_Remove, onClickListener);
        }
        aVar.b(R.string.Feature_Chat_Action_Cancel, f6636a);
        aVar.b().show();
    }

    public static void a(Fragment fragment, long j, DialogInterface.OnClickListener onClickListener, long j2) {
        b.a aVar = new b.a(fragment.getContext());
        DialogInterface.OnClickListener bVar = onClickListener == null ? new b(fragment, j, j2) : onClickListener;
        aVar.b(R.string.Feature_Chat_Response_ReportUser);
        aVar.a(R.string.Feature_Chat_Action_Report, bVar);
        aVar.b(R.string.Feature_Chat_Action_Cancel, f6636a);
        aVar.b().show();
    }

    private static class a implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f6637a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f6638b;

        public a(long j, long j2) {
            this.f6637a = j2;
            this.f6638b = j;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            com.roblox.client.i.g.a().a(new com.roblox.client.h.i(this.f6638b, this.f6637a));
        }
    }

    private static class b implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f6639a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Fragment f6640b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f6641c;

        public b(Fragment fragment, long j, long j2) {
            this.f6639a = j;
            this.f6640b = fragment;
            this.f6641c = j2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            h.a(this.f6640b, this.f6639a, this.f6641c);
        }
    }
}
