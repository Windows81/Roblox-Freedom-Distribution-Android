package c.a.b;

import c.a.d.i;
import c.aa;
import c.ac;
import c.u;
import c.x;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f2468a;

    public a(x xVar) {
        this.f2468a = xVar;
    }

    @Override // c.u
    public ac a(u.a aVar) throws IOException {
        i iVar = (i) aVar;
        aa aaVarA = iVar.a();
        g gVarC = iVar.c();
        return iVar.a(aaVarA, gVarC, gVarC.a(this.f2468a, !aaVarA.b().equals("GET")), gVarC.b());
    }
}
