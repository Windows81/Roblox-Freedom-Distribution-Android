package b.a.b;

import b.a.d.i;
import b.ab;
import b.t;
import b.w;
import b.z;
import java.io.IOException;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
public final class a implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f1763a;

    public a(w wVar) {
        this.f1763a = wVar;
    }

    @Override // b.t
    public ab a(t.a aVar) throws IOException {
        i iVar = (i) aVar;
        z zVarA = iVar.a();
        g gVarC = iVar.c();
        return iVar.a(zVarA, gVarC, gVarC.a(this.f1763a, !zVarA.b().equals(Constants.HTTP_GET)), gVarC.b());
    }
}
