package a.a.a.a.a;

import java.util.Comparator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5a = 0;

    public a a(Object obj, Object obj2) {
        return a(obj, obj2, (Comparator<?>) null);
    }

    public a a(Object obj, Object obj2, Comparator<?> comparator) {
        if (this.f5a == 0 && obj != obj2) {
            if (obj == null) {
                this.f5a = -1;
            } else if (obj2 == null) {
                this.f5a = 1;
            } else if (obj.getClass().isArray()) {
                if (obj instanceof long[]) {
                    a((long[]) obj, (long[]) obj2);
                } else if (obj instanceof int[]) {
                    a((int[]) obj, (int[]) obj2);
                } else if (obj instanceof short[]) {
                    a((short[]) obj, (short[]) obj2);
                } else if (obj instanceof char[]) {
                    a((char[]) obj, (char[]) obj2);
                } else if (obj instanceof byte[]) {
                    a((byte[]) obj, (byte[]) obj2);
                } else if (obj instanceof double[]) {
                    a((double[]) obj, (double[]) obj2);
                } else if (obj instanceof float[]) {
                    a((float[]) obj, (float[]) obj2);
                } else if (obj instanceof boolean[]) {
                    a((boolean[]) obj, (boolean[]) obj2);
                } else {
                    a((Object[]) obj, (Object[]) obj2, comparator);
                }
            } else if (comparator == null) {
                this.f5a = ((Comparable) obj).compareTo(obj2);
            } else {
                this.f5a = comparator.compare(obj, obj2);
            }
        }
        return this;
    }

    public a a(long j, long j2) {
        if (this.f5a == 0) {
            this.f5a = j < j2 ? -1 : j > j2 ? 1 : 0;
        }
        return this;
    }

    public a a(int i, int i2) {
        if (this.f5a == 0) {
            this.f5a = i < i2 ? -1 : i > i2 ? 1 : 0;
        }
        return this;
    }

    public a a(short s, short s2) {
        if (this.f5a == 0) {
            this.f5a = s < s2 ? -1 : s > s2 ? 1 : 0;
        }
        return this;
    }

    public a a(char c2, char c3) {
        if (this.f5a == 0) {
            this.f5a = c2 < c3 ? -1 : c2 > c3 ? 1 : 0;
        }
        return this;
    }

    public a a(byte b2, byte b3) {
        if (this.f5a == 0) {
            this.f5a = b2 < b3 ? -1 : b2 > b3 ? 1 : 0;
        }
        return this;
    }

    public a a(double d2, double d3) {
        if (this.f5a == 0) {
            this.f5a = Double.compare(d2, d3);
        }
        return this;
    }

    public a a(float f, float f2) {
        if (this.f5a == 0) {
            this.f5a = Float.compare(f, f2);
        }
        return this;
    }

    public a a(boolean z, boolean z2) {
        if (this.f5a == 0 && z != z2) {
            if (!z) {
                this.f5a = -1;
            } else {
                this.f5a = 1;
            }
        }
        return this;
    }

    public a a(Object[] objArr, Object[] objArr2, Comparator<?> comparator) {
        if (this.f5a == 0 && objArr != objArr2) {
            if (objArr == null) {
                this.f5a = -1;
            } else if (objArr2 == null) {
                this.f5a = 1;
            } else if (objArr.length != objArr2.length) {
                this.f5a = objArr.length >= objArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < objArr.length && this.f5a == 0; i++) {
                    a(objArr[i], objArr2[i], comparator);
                }
            }
        }
        return this;
    }

    public a a(long[] jArr, long[] jArr2) {
        if (this.f5a == 0 && jArr != jArr2) {
            if (jArr == null) {
                this.f5a = -1;
            } else if (jArr2 == null) {
                this.f5a = 1;
            } else if (jArr.length != jArr2.length) {
                this.f5a = jArr.length >= jArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < jArr.length && this.f5a == 0; i++) {
                    a(jArr[i], jArr2[i]);
                }
            }
        }
        return this;
    }

    public a a(int[] iArr, int[] iArr2) {
        if (this.f5a == 0 && iArr != iArr2) {
            if (iArr == null) {
                this.f5a = -1;
            } else if (iArr2 == null) {
                this.f5a = 1;
            } else if (iArr.length != iArr2.length) {
                this.f5a = iArr.length >= iArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < iArr.length && this.f5a == 0; i++) {
                    a(iArr[i], iArr2[i]);
                }
            }
        }
        return this;
    }

    public a a(short[] sArr, short[] sArr2) {
        if (this.f5a == 0 && sArr != sArr2) {
            if (sArr == null) {
                this.f5a = -1;
            } else if (sArr2 == null) {
                this.f5a = 1;
            } else if (sArr.length != sArr2.length) {
                this.f5a = sArr.length >= sArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < sArr.length && this.f5a == 0; i++) {
                    a(sArr[i], sArr2[i]);
                }
            }
        }
        return this;
    }

    public a a(char[] cArr, char[] cArr2) {
        if (this.f5a == 0 && cArr != cArr2) {
            if (cArr == null) {
                this.f5a = -1;
            } else if (cArr2 == null) {
                this.f5a = 1;
            } else if (cArr.length != cArr2.length) {
                this.f5a = cArr.length >= cArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < cArr.length && this.f5a == 0; i++) {
                    a(cArr[i], cArr2[i]);
                }
            }
        }
        return this;
    }

    public a a(byte[] bArr, byte[] bArr2) {
        if (this.f5a == 0 && bArr != bArr2) {
            if (bArr == null) {
                this.f5a = -1;
            } else if (bArr2 == null) {
                this.f5a = 1;
            } else if (bArr.length != bArr2.length) {
                this.f5a = bArr.length >= bArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < bArr.length && this.f5a == 0; i++) {
                    a(bArr[i], bArr2[i]);
                }
            }
        }
        return this;
    }

    public a a(double[] dArr, double[] dArr2) {
        if (this.f5a == 0 && dArr != dArr2) {
            if (dArr == null) {
                this.f5a = -1;
            } else if (dArr2 == null) {
                this.f5a = 1;
            } else if (dArr.length != dArr2.length) {
                this.f5a = dArr.length >= dArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < dArr.length && this.f5a == 0; i++) {
                    a(dArr[i], dArr2[i]);
                }
            }
        }
        return this;
    }

    public a a(float[] fArr, float[] fArr2) {
        if (this.f5a == 0 && fArr != fArr2) {
            if (fArr == null) {
                this.f5a = -1;
            } else if (fArr2 == null) {
                this.f5a = 1;
            } else if (fArr.length != fArr2.length) {
                this.f5a = fArr.length >= fArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < fArr.length && this.f5a == 0; i++) {
                    a(fArr[i], fArr2[i]);
                }
            }
        }
        return this;
    }

    public a a(boolean[] zArr, boolean[] zArr2) {
        if (this.f5a == 0 && zArr != zArr2) {
            if (zArr == null) {
                this.f5a = -1;
            } else if (zArr2 == null) {
                this.f5a = 1;
            } else if (zArr.length != zArr2.length) {
                this.f5a = zArr.length >= zArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < zArr.length && this.f5a == 0; i++) {
                    a(zArr[i], zArr2[i]);
                }
            }
        }
        return this;
    }

    public int a() {
        return this.f5a;
    }
}
