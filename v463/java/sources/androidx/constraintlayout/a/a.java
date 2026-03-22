package androidx.constraintlayout.a;

import androidx.constraintlayout.a.h;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f1109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f1110c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f1108a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1111d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f1112e = null;
    private int[] f = new int[8];
    private int[] g = new int[8];
    private float[] h = new float[8];
    private int i = -1;
    private int j = -1;
    private boolean k = false;

    a(b bVar, c cVar) {
        this.f1109b = bVar;
        this.f1110c = cVar;
    }

    public final void a(h hVar, float f) {
        if (f == 0.0f) {
            a(hVar, true);
            return;
        }
        int i = this.i;
        if (i == -1) {
            this.i = 0;
            this.h[0] = f;
            this.f[0] = hVar.f1191a;
            this.g[this.i] = -1;
            hVar.i++;
            hVar.a(this.f1109b);
            this.f1108a++;
            if (this.k) {
                return;
            }
            int i2 = this.j + 1;
            this.j = i2;
            int[] iArr = this.f;
            if (i2 >= iArr.length) {
                this.k = true;
                this.j = iArr.length - 1;
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f1108a; i4++) {
            if (this.f[i] == hVar.f1191a) {
                this.h[i] = f;
                return;
            }
            if (this.f[i] < hVar.f1191a) {
                i3 = i;
            }
            i = this.g[i];
        }
        int length = this.j;
        int i5 = length + 1;
        if (this.k) {
            int[] iArr2 = this.f;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i5;
        }
        int[] iArr3 = this.f;
        if (length >= iArr3.length && this.f1108a < iArr3.length) {
            int i6 = 0;
            while (true) {
                int[] iArr4 = this.f;
                if (i6 >= iArr4.length) {
                    break;
                }
                if (iArr4[i6] == -1) {
                    length = i6;
                    break;
                }
                i6++;
            }
        }
        int[] iArr5 = this.f;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i7 = this.f1111d * 2;
            this.f1111d = i7;
            this.k = false;
            this.j = length - 1;
            this.h = Arrays.copyOf(this.h, i7);
            this.f = Arrays.copyOf(this.f, this.f1111d);
            this.g = Arrays.copyOf(this.g, this.f1111d);
        }
        this.f[length] = hVar.f1191a;
        this.h[length] = f;
        if (i3 != -1) {
            int[] iArr6 = this.g;
            iArr6[length] = iArr6[i3];
            iArr6[i3] = length;
        } else {
            this.g[length] = this.i;
            this.i = length;
        }
        hVar.i++;
        hVar.a(this.f1109b);
        this.f1108a++;
        if (!this.k) {
            this.j++;
        }
        if (this.f1108a >= this.f.length) {
            this.k = true;
        }
        int i8 = this.j;
        int[] iArr7 = this.f;
        if (i8 >= iArr7.length) {
            this.k = true;
            this.j = iArr7.length - 1;
        }
    }

    final void a(h hVar, float f, boolean z) {
        if (f == 0.0f) {
            return;
        }
        int i = this.i;
        if (i == -1) {
            this.i = 0;
            this.h[0] = f;
            this.f[0] = hVar.f1191a;
            this.g[this.i] = -1;
            hVar.i++;
            hVar.a(this.f1109b);
            this.f1108a++;
            if (this.k) {
                return;
            }
            int i2 = this.j + 1;
            this.j = i2;
            int[] iArr = this.f;
            if (i2 >= iArr.length) {
                this.k = true;
                this.j = iArr.length - 1;
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f1108a; i4++) {
            if (this.f[i] == hVar.f1191a) {
                float[] fArr = this.h;
                fArr[i] = fArr[i] + f;
                if (fArr[i] == 0.0f) {
                    if (i == this.i) {
                        this.i = this.g[i];
                    } else {
                        int[] iArr2 = this.g;
                        iArr2[i3] = iArr2[i];
                    }
                    if (z) {
                        hVar.b(this.f1109b);
                    }
                    if (this.k) {
                        this.j = i;
                    }
                    hVar.i--;
                    this.f1108a--;
                    return;
                }
                return;
            }
            if (this.f[i] < hVar.f1191a) {
                i3 = i;
            }
            i = this.g[i];
        }
        int length = this.j;
        int i5 = length + 1;
        if (this.k) {
            int[] iArr3 = this.f;
            if (iArr3[length] != -1) {
                length = iArr3.length;
            }
        } else {
            length = i5;
        }
        int[] iArr4 = this.f;
        if (length >= iArr4.length && this.f1108a < iArr4.length) {
            int i6 = 0;
            while (true) {
                int[] iArr5 = this.f;
                if (i6 >= iArr5.length) {
                    break;
                }
                if (iArr5[i6] == -1) {
                    length = i6;
                    break;
                }
                i6++;
            }
        }
        int[] iArr6 = this.f;
        if (length >= iArr6.length) {
            length = iArr6.length;
            int i7 = this.f1111d * 2;
            this.f1111d = i7;
            this.k = false;
            this.j = length - 1;
            this.h = Arrays.copyOf(this.h, i7);
            this.f = Arrays.copyOf(this.f, this.f1111d);
            this.g = Arrays.copyOf(this.g, this.f1111d);
        }
        this.f[length] = hVar.f1191a;
        this.h[length] = f;
        if (i3 != -1) {
            int[] iArr7 = this.g;
            iArr7[length] = iArr7[i3];
            iArr7[i3] = length;
        } else {
            this.g[length] = this.i;
            this.i = length;
        }
        hVar.i++;
        hVar.a(this.f1109b);
        this.f1108a++;
        if (!this.k) {
            this.j++;
        }
        int i8 = this.j;
        int[] iArr8 = this.f;
        if (i8 >= iArr8.length) {
            this.k = true;
            this.j = iArr8.length - 1;
        }
    }

    public final float a(h hVar, boolean z) {
        if (this.f1112e == hVar) {
            this.f1112e = null;
        }
        int i = this.i;
        if (i == -1) {
            return 0.0f;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f1108a) {
            if (this.f[i] == hVar.f1191a) {
                if (i == this.i) {
                    this.i = this.g[i];
                } else {
                    int[] iArr = this.g;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    hVar.b(this.f1109b);
                }
                hVar.i--;
                this.f1108a--;
                this.f[i] = -1;
                if (this.k) {
                    this.j = i;
                }
                return this.h[i];
            }
            i2++;
            i3 = i;
            i = this.g[i];
        }
        return 0.0f;
    }

    public final void a() {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.f1108a; i2++) {
            h hVar = this.f1110c.f1178c[this.f[i]];
            if (hVar != null) {
                hVar.b(this.f1109b);
            }
            i = this.g[i];
        }
        this.i = -1;
        this.j = -1;
        this.k = false;
        this.f1108a = 0;
    }

    final boolean a(h hVar) {
        int i = this.i;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.f1108a; i2++) {
            if (this.f[i] == hVar.f1191a) {
                return true;
            }
            i = this.g[i];
        }
        return false;
    }

    void b() {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.f1108a; i2++) {
            float[] fArr = this.h;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.g[i];
        }
    }

    void a(float f) {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.f1108a; i2++) {
            float[] fArr = this.h;
            fArr[i] = fArr[i] / f;
            i = this.g[i];
        }
    }

    private boolean a(h hVar, e eVar) {
        return hVar.i <= 1;
    }

    h a(e eVar) {
        int i = this.i;
        h hVar = null;
        h hVar2 = null;
        boolean z = false;
        boolean z2 = false;
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i2 = 0; i != -1 && i2 < this.f1108a; i2++) {
            float f3 = this.h[i];
            h hVar3 = this.f1110c.f1178c[this.f[i]];
            if (f3 < 0.0f) {
                if (f3 > -0.001f) {
                    this.h[i] = 0.0f;
                    hVar3.b(this.f1109b);
                    f3 = 0.0f;
                }
            } else if (f3 < 0.001f) {
                this.h[i] = 0.0f;
                hVar3.b(this.f1109b);
                f3 = 0.0f;
            }
            if (f3 != 0.0f) {
                if (hVar3.f == h.a.UNRESTRICTED) {
                    if (hVar2 == null || f > f3) {
                        boolean zA = a(hVar3, eVar);
                        z = zA;
                        f = f3;
                        hVar2 = hVar3;
                    } else if (!z && a(hVar3, eVar)) {
                        f = f3;
                        hVar2 = hVar3;
                        z = true;
                    }
                } else if (hVar2 == null && f3 < 0.0f) {
                    if (hVar == null || f2 > f3) {
                        boolean zA2 = a(hVar3, eVar);
                        z2 = zA2;
                        f2 = f3;
                        hVar = hVar3;
                    } else if (!z2 && a(hVar3, eVar)) {
                        f2 = f3;
                        hVar = hVar3;
                        z2 = true;
                    }
                }
            }
            i = this.g[i];
        }
        return hVar2 != null ? hVar2 : hVar;
    }

    final void a(b bVar, b bVar2, boolean z) {
        int i = this.i;
        while (true) {
            for (int i2 = 0; i != -1 && i2 < this.f1108a; i2++) {
                if (this.f[i] == bVar2.f1171a.f1191a) {
                    float f = this.h[i];
                    a(bVar2.f1171a, z);
                    a aVar = bVar2.f1174d;
                    int i3 = aVar.i;
                    for (int i4 = 0; i3 != -1 && i4 < aVar.f1108a; i4++) {
                        a(this.f1110c.f1178c[aVar.f[i3]], aVar.h[i3] * f, z);
                        i3 = aVar.g[i3];
                    }
                    bVar.f1172b += bVar2.f1172b * f;
                    if (z) {
                        bVar2.f1171a.b(bVar);
                    }
                    i = this.i;
                } else {
                    i = this.g[i];
                }
            }
            return;
        }
    }

    void a(b bVar, b[] bVarArr) {
        int i = this.i;
        while (true) {
            for (int i2 = 0; i != -1 && i2 < this.f1108a; i2++) {
                h hVar = this.f1110c.f1178c[this.f[i]];
                if (hVar.f1192b != -1) {
                    float f = this.h[i];
                    a(hVar, true);
                    b bVar2 = bVarArr[hVar.f1192b];
                    if (!bVar2.f1175e) {
                        a aVar = bVar2.f1174d;
                        int i3 = aVar.i;
                        for (int i4 = 0; i3 != -1 && i4 < aVar.f1108a; i4++) {
                            a(this.f1110c.f1178c[aVar.f[i3]], aVar.h[i3] * f, true);
                            i3 = aVar.g[i3];
                        }
                    }
                    bVar.f1172b += bVar2.f1172b * f;
                    bVar2.f1171a.b(bVar);
                    i = this.i;
                } else {
                    i = this.g[i];
                }
            }
            return;
        }
    }

    h a(boolean[] zArr, h hVar) {
        int i = this.i;
        h hVar2 = null;
        float f = 0.0f;
        for (int i2 = 0; i != -1 && i2 < this.f1108a; i2++) {
            if (this.h[i] < 0.0f) {
                h hVar3 = this.f1110c.f1178c[this.f[i]];
                if ((zArr == null || !zArr[hVar3.f1191a]) && hVar3 != hVar && (hVar3.f == h.a.SLACK || hVar3.f == h.a.ERROR)) {
                    float f2 = this.h[i];
                    if (f2 < f) {
                        hVar2 = hVar3;
                        f = f2;
                    }
                }
            }
            i = this.g[i];
        }
        return hVar2;
    }

    final h a(int i) {
        int i2 = this.i;
        for (int i3 = 0; i2 != -1 && i3 < this.f1108a; i3++) {
            if (i3 == i) {
                return this.f1110c.f1178c[this.f[i2]];
            }
            i2 = this.g[i2];
        }
        return null;
    }

    final float b(int i) {
        int i2 = this.i;
        for (int i3 = 0; i2 != -1 && i3 < this.f1108a; i3++) {
            if (i3 == i) {
                return this.h[i2];
            }
            i2 = this.g[i2];
        }
        return 0.0f;
    }

    public final float b(h hVar) {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.f1108a; i2++) {
            if (this.f[i] == hVar.f1191a) {
                return this.h[i];
            }
            i = this.g[i];
        }
        return 0.0f;
    }

    public String toString() {
        int i = this.i;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.f1108a; i2++) {
            str = ((str + " -> ") + this.h[i] + " : ") + this.f1110c.f1178c[this.f[i]];
            i = this.g[i];
        }
        return str;
    }
}
