package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;

/* JADX INFO: loaded from: classes.dex */
final class h implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f5073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f5074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ g f5075c;

    h(g gVar, String str, String str2) {
        this.f5075c = gVar;
        this.f5073a = str;
        this.f5074b = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        DownloadManager downloadManager = (DownloadManager) this.f5075c.f5040b.getSystemService("download");
        try {
            String str = this.f5073a;
            String str2 = this.f5074b;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            com.google.android.gms.ads.internal.aw.g().a(request);
            downloadManager.enqueue(request);
        } catch (IllegalStateException e) {
            this.f5075c.a("Could not store picture.");
        }
    }
}
