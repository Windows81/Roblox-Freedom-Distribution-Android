package androidx.fragment.app;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.core.app.a;
import androidx.lifecycle.g;
import androidx.lifecycle.x;
import androidx.lifecycle.y;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends androidx.core.app.e implements a.InterfaceC0025a, a.c, y {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f1669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1670d;
    boolean f;
    boolean g;
    boolean h;
    int i;
    androidx.c.h<String> j;
    private x k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Handler f1667a = new Handler() { // from class: androidx.fragment.app.c.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 2) {
                c.this.h();
                c.this.f1668b.m();
            } else {
                super.handleMessage(message);
            }
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final e f1668b = e.a(new a());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f1671e = true;

    public void a(Fragment fragment) {
    }

    public Object i() {
        return null;
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f1674a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        x f1675b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        i f1676c;

        b() {
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        this.f1668b.b();
        int i3 = i >> 16;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String strA = this.j.a(i4);
            this.j.c(i4);
            if (strA == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment fragmentA = this.f1668b.a(strA);
            if (fragmentA == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + strA);
                return;
            }
            fragmentA.a(i & 65535, i2, intent);
            return;
        }
        a.b bVarA = androidx.core.app.a.a();
        if (bVarA == null || !bVarA.a(this, i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        g gVarA = this.f1668b.a();
        boolean zG = gVarA.g();
        if (!zG || Build.VERSION.SDK_INT > 25) {
            if (zG || !gVarA.d()) {
                super.onBackPressed();
            }
        }
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.f1668b.a(z);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.f1668b.b(z);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1668b.b();
        this.f1668b.a(configuration);
    }

    @Override // androidx.lifecycle.y
    public x k() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.k == null) {
            b bVar = (b) getLastNonConfigurationInstance();
            if (bVar != null) {
                this.k = bVar.f1675b;
            }
            if (this.k == null) {
                this.k = new x();
            }
        }
        return this.k;
    }

    @Override // androidx.core.app.e, androidx.lifecycle.j
    public androidx.lifecycle.g g() {
        return super.g();
    }

    @Override // androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.f1668b.a((Fragment) null);
        super.onCreate(bundle);
        b bVar = (b) getLastNonConfigurationInstance();
        if (bVar != null && bVar.f1675b != null && this.k == null) {
            this.k = bVar.f1675b;
        }
        if (bundle != null) {
            this.f1668b.a(bundle.getParcelable("android:support:fragments"), bVar != null ? bVar.f1676c : null);
            if (bundle.containsKey("android:support:next_request_index")) {
                this.i = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.j = new androidx.c.h<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.j.b(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.j == null) {
            this.j = new androidx.c.h<>();
            this.i = 0;
        }
        this.f1668b.e();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0) {
            return super.onCreatePanelMenu(i, menu) | this.f1668b.a(menu, getMenuInflater());
        }
        return super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewA = a(view, str, context, attributeSet);
        return viewA == null ? super.onCreateView(view, str, context, attributeSet) : viewA;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewA = a((View) null, str, context, attributeSet);
        return viewA == null ? super.onCreateView(str, context, attributeSet) : viewA;
    }

    final View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f1668b.a(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.k != null && !isChangingConfigurations()) {
            this.k.a();
        }
        this.f1668b.k();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f1668b.l();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.f1668b.a(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.f1668b.b(menuItem);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.f1668b.b(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f1670d = false;
        if (this.f1667a.hasMessages(2)) {
            this.f1667a.removeMessages(2);
            h();
        }
        this.f1668b.i();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f1668b.b();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f1668b.b();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f1667a.sendEmptyMessage(2);
        this.f1670d = true;
        this.f1668b.m();
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        this.f1667a.removeMessages(2);
        h();
        this.f1668b.m();
    }

    protected void h() {
        this.f1668b.h();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i == 0 && menu != null) {
            return a(view, menu) | this.f1668b.a(menu);
        }
        return super.onPreparePanel(i, view, menu);
    }

    protected boolean a(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        Object objI = i();
        i iVarD = this.f1668b.d();
        if (iVarD == null && this.k == null && objI == null) {
            return null;
        }
        b bVar = new b();
        bVar.f1674a = objI;
        bVar.f1675b = this.k;
        bVar.f1676c = iVarD;
        return bVar;
    }

    @Override // androidx.core.app.e, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        a();
        Parcelable parcelableC = this.f1668b.c();
        if (parcelableC != null) {
            bundle.putParcelable("android:support:fragments", parcelableC);
        }
        if (this.j.b() > 0) {
            bundle.putInt("android:support:next_request_index", this.i);
            int[] iArr = new int[this.j.b()];
            String[] strArr = new String[this.j.b()];
            for (int i = 0; i < this.j.b(); i++) {
                iArr[i] = this.j.d(i);
                strArr[i] = this.j.e(i);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.f1671e = false;
        if (!this.f1669c) {
            this.f1669c = true;
            this.f1668b.f();
        }
        this.f1668b.b();
        this.f1668b.m();
        this.f1668b.g();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.f1671e = true;
        a();
        this.f1668b.j();
    }

    @Deprecated
    public void b() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f1669c);
        printWriter.print(" mResumed=");
        printWriter.print(this.f1670d);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1671e);
        if (getApplication() != null) {
            androidx.f.a.a.a(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.f1668b.a().a(str, fileDescriptor, printWriter, strArr);
    }

    public g j() {
        return this.f1668b.a();
    }

    @Deprecated
    public androidx.f.a.a l() {
        return androidx.f.a.a.a(this);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (!this.h && i != -1) {
            b(i);
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (!this.h && i != -1) {
            b(i);
        }
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        if (!this.g && i != -1) {
            b(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (!this.g && i != -1) {
            b(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    static void b(int i) {
        if ((i & (-65536)) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    @Override // androidx.core.app.a.c
    public final void a(int i) {
        if (this.f || i == -1) {
            return;
        }
        b(i);
    }

    @Override // android.app.Activity, androidx.core.app.a.InterfaceC0025a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.f1668b.b();
        int i2 = (i >> 16) & 65535;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String strA = this.j.a(i3);
            this.j.c(i3);
            if (strA == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment fragmentA = this.f1668b.a(strA);
            if (fragmentA == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + strA);
                return;
            }
            fragmentA.a(i & 65535, strArr, iArr);
        }
    }

    public void a(Fragment fragment, Intent intent, int i, Bundle bundle) {
        this.h = true;
        try {
            if (i == -1) {
                androidx.core.app.a.a(this, intent, -1, bundle);
            } else {
                b(i);
                androidx.core.app.a.a(this, intent, ((b(fragment) + 1) << 16) + (i & 65535), bundle);
            }
        } finally {
            this.h = false;
        }
    }

    public void a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        this.g = true;
        try {
            if (i == -1) {
                androidx.core.app.a.a(this, intentSender, i, intent, i2, i3, i4, bundle);
            } else {
                b(i);
                androidx.core.app.a.a(this, intentSender, ((b(fragment) + 1) << 16) + (i & 65535), intent, i2, i3, i4, bundle);
            }
        } finally {
            this.g = false;
        }
    }

    private int b(Fragment fragment) {
        if (this.j.b() >= 65534) {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
        while (this.j.f(this.i) >= 0) {
            this.i = (this.i + 1) % 65534;
        }
        int i = this.i;
        this.j.b(i, fragment.p);
        this.i = (this.i + 1) % 65534;
        return i;
    }

    class a extends f<c> {
        public a() {
            super(c.this);
        }

        @Override // androidx.fragment.app.f
        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            c.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // androidx.fragment.app.f
        public boolean a(Fragment fragment) {
            return !c.this.isFinishing();
        }

        @Override // androidx.fragment.app.f
        public LayoutInflater b() {
            return c.this.getLayoutInflater().cloneInContext(c.this);
        }

        @Override // androidx.fragment.app.f
        public void c() {
            c.this.b();
        }

        @Override // androidx.fragment.app.f
        public void a(Fragment fragment, Intent intent, int i, Bundle bundle) {
            c.this.a(fragment, intent, i, bundle);
        }

        @Override // androidx.fragment.app.f
        public void a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
            c.this.a(fragment, intentSender, i, intent, i2, i3, i4, bundle);
        }

        @Override // androidx.fragment.app.f
        public boolean d() {
            return c.this.getWindow() != null;
        }

        @Override // androidx.fragment.app.f
        public int e() {
            Window window = c.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // androidx.fragment.app.f
        public void b(Fragment fragment) {
            c.this.a(fragment);
        }

        @Override // androidx.fragment.app.f, androidx.fragment.app.d
        public View a(int i) {
            return c.this.findViewById(i);
        }

        @Override // androidx.fragment.app.f, androidx.fragment.app.d
        public boolean a() {
            Window window = c.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }

    private void a() {
        while (a(j(), g.b.CREATED)) {
        }
    }

    private static boolean a(g gVar, g.b bVar) {
        boolean zA = false;
        for (Fragment fragment : gVar.f()) {
            if (fragment != null) {
                if (fragment.g().a().a(g.b.STARTED)) {
                    fragment.ac.a(bVar);
                    zA = true;
                }
                g gVarV = fragment.v();
                if (gVarV != null) {
                    zA |= a(gVarV, bVar);
                }
            }
        }
        return zA;
    }
}
