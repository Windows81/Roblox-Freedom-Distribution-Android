package android.support.v7.widget;

import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class ViewBoundsCheck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f1599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f1600b = new a();

    @Retention(RetentionPolicy.SOURCE)
    public @interface ViewBounds {
    }

    interface b {
        int a();

        int a(View view);

        View a(int i);

        int b();

        int b(View view);
    }

    ViewBoundsCheck(b bVar) {
        this.f1599a = bVar;
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1601a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1602b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1603c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1604d;
        int e;

        a() {
        }

        void a(int i, int i2, int i3, int i4) {
            this.f1602b = i;
            this.f1603c = i2;
            this.f1604d = i3;
            this.e = i4;
        }

        void a(int i) {
            this.f1601a |= i;
        }

        void a() {
            this.f1601a = 0;
        }

        int a(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            if (i == i2) {
                return 2;
            }
            return 4;
        }

        boolean b() {
            if ((this.f1601a & 7) != 0 && (this.f1601a & (a(this.f1604d, this.f1602b) << 0)) == 0) {
                return false;
            }
            if ((this.f1601a & 112) != 0 && (this.f1601a & (a(this.f1604d, this.f1603c) << 4)) == 0) {
                return false;
            }
            if ((this.f1601a & 1792) == 0 || (this.f1601a & (a(this.e, this.f1602b) << 8)) != 0) {
                return (this.f1601a & 28672) == 0 || (this.f1601a & (a(this.e, this.f1603c) << 12)) != 0;
            }
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    android.view.View a(int r9, int r10, int r11, int r12) {
        /*
            r8 = this;
            android.support.v7.widget.ViewBoundsCheck$b r0 = r8.f1599a
            int r3 = r0.a()
            android.support.v7.widget.ViewBoundsCheck$b r0 = r8.f1599a
            int r4 = r0.b()
            if (r10 <= r9) goto L3e
            r0 = 1
        Lf:
            r2 = 0
        L10:
            if (r9 == r10) goto L57
            android.support.v7.widget.ViewBoundsCheck$b r1 = r8.f1599a
            android.view.View r1 = r1.a(r9)
            android.support.v7.widget.ViewBoundsCheck$b r5 = r8.f1599a
            int r5 = r5.a(r1)
            android.support.v7.widget.ViewBoundsCheck$b r6 = r8.f1599a
            int r6 = r6.b(r1)
            android.support.v7.widget.ViewBoundsCheck$a r7 = r8.f1600b
            r7.a(r3, r4, r5, r6)
            if (r11 == 0) goto L40
            android.support.v7.widget.ViewBoundsCheck$a r5 = r8.f1600b
            r5.a()
            android.support.v7.widget.ViewBoundsCheck$a r5 = r8.f1600b
            r5.a(r11)
            android.support.v7.widget.ViewBoundsCheck$a r5 = r8.f1600b
            boolean r5 = r5.b()
            if (r5 == 0) goto L40
        L3d:
            return r1
        L3e:
            r0 = -1
            goto Lf
        L40:
            if (r12 == 0) goto L59
            android.support.v7.widget.ViewBoundsCheck$a r5 = r8.f1600b
            r5.a()
            android.support.v7.widget.ViewBoundsCheck$a r5 = r8.f1600b
            r5.a(r12)
            android.support.v7.widget.ViewBoundsCheck$a r5 = r8.f1600b
            boolean r5 = r5.b()
            if (r5 == 0) goto L59
        L54:
            int r9 = r9 + r0
            r2 = r1
            goto L10
        L57:
            r1 = r2
            goto L3d
        L59:
            r1 = r2
            goto L54
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.ViewBoundsCheck.a(int, int, int, int):android.view.View");
    }

    boolean a(View view, int i) {
        this.f1600b.a(this.f1599a.a(), this.f1599a.b(), this.f1599a.a(view), this.f1599a.b(view));
        if (i == 0) {
            return false;
        }
        this.f1600b.a();
        this.f1600b.a(i);
        return this.f1600b.b();
    }
}
