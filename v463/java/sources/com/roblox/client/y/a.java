package com.roblox.client.y;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.c;
import com.google.android.gms.auth.api.credentials.e;
import com.google.android.gms.auth.api.credentials.f;
import com.google.android.gms.common.api.j;
import com.google.android.gms.f.g;
import com.roblox.client.ae.k;
import com.roblox.client.g.a;
import com.roblox.client.g.b;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements com.roblox.client.g.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WeakReference<Activity> f7564a = new WeakReference<>(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f7565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f7566c;

    public a(Activity activity, b bVar) {
        this.f7565b = c.a(activity, new f.a().b().a());
        this.f7566c = bVar;
    }

    @Override // com.roblox.client.g.a
    public com.roblox.client.g.c a(Intent intent) {
        return a((Credential) intent.getParcelableExtra("com.google.android.gms.credentials.Credential"));
    }

    @Override // com.roblox.client.g.a
    public void a(Activity activity, final int i, com.roblox.client.g.c cVar, final a.InterfaceC0146a interfaceC0146a) {
        k.c("SmartLockManager", "saveCredential.");
        this.f7564a = new WeakReference<>(activity);
        this.f7565b.a(b(cVar)).a(new com.google.android.gms.f.c<Void>() { // from class: com.roblox.client.y.a.1
            @Override // com.google.android.gms.f.c
            public void a(g<Void> gVar) {
                k.c("SmartLockManager", "onCompleted: " + gVar.e());
                if (gVar.b()) {
                    k.c("SmartLockManager", "SAVE: OK");
                    a.this.f7566c.b("credentialSavedNoDialog");
                    interfaceC0146a.a();
                    return;
                }
                Exception excE = gVar.e();
                if (excE instanceof j) {
                    if (a.this.f7564a.get() == null) {
                        a.this.f7566c.b("dialogNotShown", "nullActivity");
                        interfaceC0146a.b();
                        return;
                    }
                    try {
                        ((j) excE).a(a.this.f7564a.get(), i);
                        interfaceC0146a.c();
                        a.this.f7566c.b("dialogShown");
                        return;
                    } catch (IntentSender.SendIntentException e2) {
                        k.e("SmartLockManager", "Failed to send resolution. " + e2.getMessage());
                        a.this.f7566c.b("dialogNotShown", e2.getMessage());
                        interfaceC0146a.b();
                        return;
                    }
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Task exception. ");
                sb.append(excE != null ? excE.getMessage() : "");
                k.e("SmartLockManager", sb.toString());
                a.this.f7566c.b("dialogNotShown", "noResolution");
                interfaceC0146a.b();
            }
        });
    }

    @Override // com.roblox.client.g.a
    public void a(Activity activity, final int i, final a.b bVar) {
        if (com.roblox.client.b.bY()) {
            CredentialRequest credentialRequestA = new CredentialRequest.a().a(true).a();
            this.f7564a = new WeakReference<>(activity);
            this.f7565b.a(credentialRequestA).a(new com.google.android.gms.f.c<com.google.android.gms.auth.api.credentials.a>() { // from class: com.roblox.client.y.a.2
                @Override // com.google.android.gms.f.c
                public void a(g<com.google.android.gms.auth.api.credentials.a> gVar) {
                    if (gVar.b()) {
                        k.b("SmartLockManager", "result: " + gVar.d().a());
                        a.this.f7566c.a("credentialSelectedNoDialog");
                        bVar.a(a.this.a(gVar.d().a()));
                        return;
                    }
                    Exception excE = gVar.e();
                    if (excE instanceof j) {
                        if (a.this.f7564a.get() == null) {
                            a.this.f7566c.a("dialogNotShown", "nullActivity");
                            return;
                        }
                        j jVar = (j) excE;
                        try {
                            if (((j) excE).a() == 6) {
                                jVar.a(a.this.f7564a.get(), i);
                                a.this.f7566c.a("dialogShown");
                                return;
                            }
                            return;
                        } catch (IntentSender.SendIntentException e2) {
                            k.e("SmartLockManager", "Failed to send resolution." + e2);
                            a.this.f7566c.a("dialogNotShown", e2.getMessage());
                            return;
                        }
                    }
                    if (!(excE instanceof com.google.android.gms.common.api.b)) {
                        a.this.f7566c.a("dialogNotShown", "unknown");
                        return;
                    }
                    k.e("SmartLockManager", "Unsuccessful credential request." + excE);
                    a.this.f7566c.a("dialogNotShown", String.valueOf(((com.google.android.gms.common.api.b) excE).a()));
                }
            });
        }
    }

    @Override // com.roblox.client.g.a
    public void a(com.roblox.client.g.c cVar) {
        this.f7565b.b(b(cVar)).a(new com.google.android.gms.f.c<Void>() { // from class: com.roblox.client.y.a.3
            @Override // com.google.android.gms.f.c
            public void a(g<Void> gVar) {
                if (gVar.b()) {
                    k.c("SmartLockManager", "Credential deleted.");
                    return;
                }
                k.c("SmartLockManager", "Credential not deleted: " + gVar.e());
            }
        });
    }

    @Override // com.roblox.client.g.a
    public void a() {
        this.f7566c.b("credentialSaved");
    }

    @Override // com.roblox.client.g.a
    public void b() {
        this.f7566c.b("credentialNotSaved", "neverClickedOrDialogDismissed");
    }

    @Override // com.roblox.client.g.a
    public void c() {
        this.f7566c.a("credentialSelected");
    }

    @Override // com.roblox.client.g.a
    public void d() {
        this.f7566c.a("dialogDismissed");
    }

    private Credential b(com.roblox.client.g.c cVar) {
        return new Credential.a(cVar.f6208a).a(cVar.f6210c).b(cVar.f6209b).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.roblox.client.g.c a(Credential credential) {
        return new com.roblox.client.g.c(credential.a(), credential.e(), credential.b());
    }
}
