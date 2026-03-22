package androidx.constraintlayout.a.a;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class j extends f {
    protected f[] ai = new f[4];
    protected int aj = 0;

    public void b(f fVar) {
        int i = this.aj + 1;
        f[] fVarArr = this.ai;
        if (i > fVarArr.length) {
            this.ai = (f[]) Arrays.copyOf(fVarArr, fVarArr.length * 2);
        }
        f[] fVarArr2 = this.ai;
        int i2 = this.aj;
        fVarArr2[i2] = fVar;
        this.aj = i2 + 1;
    }

    public void J() {
        this.aj = 0;
    }
}
