package com.roblox.client.signup.multiscreen.b;

import androidx.lifecycle.LiveData;
import c.ad;
import com.roblox.client.signup.multiscreen.b.f;
import com.roblox.platform.http.postbody.webinterface.UpdateGenderPostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends LiveData<com.roblox.client.signup.multiscreen.a.c> implements f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f7207e;
    private c f;
    private com.roblox.client.signup.multiscreen.c g;

    @Override // com.roblox.client.signup.multiscreen.b.f
    public LiveData<com.roblox.client.signup.multiscreen.a.c> a() {
        return this;
    }

    public g(com.roblox.client.signup.multiscreen.c cVar, e eVar, c cVar2) {
        this.f7207e = eVar;
        this.f = cVar2;
        this.g = cVar;
    }

    @Override // com.roblox.client.signup.multiscreen.b.f
    public LiveData<com.roblox.client.signup.multiscreen.a.c> a(f.a aVar) {
        if (aVar != f.a.UNKNOWN) {
            final int iB = b(aVar);
            String strC = c(aVar);
            this.f.a("Android-VAppSignup-ChangeGenderAttempt");
            this.f7207e.a(new UpdateGenderPostBody(strC)).a(new e.d<ad>() { // from class: com.roblox.client.signup.multiscreen.b.g.1
                @Override // e.d
                public void a(final e.b<ad> bVar, final e.l<ad> lVar) {
                    g.this.g.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.g.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            com.roblox.platform.http.returntypes.b bVar2 = new com.roblox.platform.http.returntypes.b(lVar);
                            if (lVar.d()) {
                                g.this.f.a("Android-VAppSignup-ChangeGenderSuccess");
                                g.this.a(com.roblox.client.signup.multiscreen.a.c.a(iB));
                            } else {
                                g.this.a(com.roblox.client.signup.multiscreen.a.c.b(iB));
                                g.this.f.a(bVar.d().a().h(), bVar2.f7732a, bVar2.c());
                            }
                        }
                    });
                }

                @Override // e.d
                public void a(final e.b<ad> bVar, Throwable th) {
                    g.this.g.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.g.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            g.this.a(com.roblox.client.signup.multiscreen.a.c.b(iB));
                            g.this.f.a(bVar.d().a().h(), 0, -1);
                        }
                    });
                }
            });
        }
        return this;
    }

    /* JADX INFO: renamed from: com.roblox.client.signup.multiscreen.b.g$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7215a;

        static {
            int[] iArr = new int[f.a.values().length];
            f7215a = iArr;
            try {
                iArr[f.a.MALE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7215a[f.a.FEMALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private int b(f.a aVar) {
        int i = AnonymousClass2.f7215a[aVar.ordinal()];
        if (i != 1) {
            return i != 2 ? 0 : 3;
        }
        return 2;
    }

    private String c(f.a aVar) {
        int i = AnonymousClass2.f7215a[aVar.ordinal()];
        return i != 1 ? i != 2 ? "" : "female" : "male";
    }
}
