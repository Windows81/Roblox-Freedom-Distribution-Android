package android.support.v4.app;

import android.app.Activity;
import android.arch.lifecycle.d;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.support.v4.app.a;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class h extends e implements a.InterfaceC0014a, a.c {
    boolean e;
    boolean f;
    boolean i;
    boolean j;
    int k;
    android.support.v4.g.n<String> l;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Handler f705c = new Handler() { // from class: android.support.v4.app.h.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    if (h.this.g) {
                        h.this.a(false);
                    }
                    break;
                case 2:
                    h.this.a_();
                    h.this.f706d.n();
                    break;
                default:
                    super.handleMessage(message);
                    break;
            }
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final j f706d = j.a(new a());
    boolean g = true;
    boolean h = true;

    @Override // android.support.v4.app.d, android.app.Activity, android.view.LayoutInflater.Factory2
    public /* bridge */ /* synthetic */ View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return super.onCreateView(view, str, context, attributeSet);
    }

    @Override // android.support.v4.app.d, android.app.Activity, android.view.LayoutInflater.Factory
    public /* bridge */ /* synthetic */ View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return super.onCreateView(str, context, attributeSet);
    }

    @Override // android.support.v4.app.e, android.app.Activity
    public /* bridge */ /* synthetic */ void startActivityForResult(Intent intent, int i, Bundle bundle) {
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.support.v4.app.d, android.app.Activity
    public /* bridge */ /* synthetic */ void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.support.v4.app.e, android.app.Activity
    public /* bridge */ /* synthetic */ void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f709a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        n f710b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        android.support.v4.g.m<String, v> f711c;

        b() {
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        this.f706d.b();
        int i3 = i >> 16;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String strA = this.l.a(i4);
            this.l.c(i4);
            if (strA == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment fragmentA = this.f706d.a(strA);
            if (fragmentA == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + strA);
                return;
            } else {
                fragmentA.onActivityResult(65535 & i, i2, intent);
                return;
            }
        }
        a.b bVarA = android.support.v4.app.a.a();
        if (bVarA == null || !bVarA.a(this, i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        l lVarA = this.f706d.a();
        boolean zG = lVarA.g();
        if (!zG || Build.VERSION.SDK_INT > 25) {
            if (zG || !lVarA.d()) {
                super.onBackPressed();
            }
        }
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.f706d.a(z);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.f706d.b(z);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f706d.a(configuration);
    }

    @Override // android.support.v4.app.ai, android.arch.lifecycle.g
    public android.arch.lifecycle.d getLifecycle() {
        return super.getLifecycle();
    }

    @Override // android.support.v4.app.ai, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.f706d.a((Fragment) null);
        super.onCreate(bundle);
        b bVar = (b) getLastNonConfigurationInstance();
        if (bVar != null) {
            this.f706d.a(bVar.f711c);
        }
        if (bundle != null) {
            this.f706d.a(bundle.getParcelable("android:support:fragments"), bVar != null ? bVar.f710b : null);
            if (bundle.containsKey("android:support:next_request_index")) {
                this.k = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.l = new android.support.v4.g.n<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.l.b(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.l == null) {
            this.l = new android.support.v4.g.n<>();
            this.k = 0;
        }
        this.f706d.e();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        return i == 0 ? super.onCreatePanelMenu(i, menu) | this.f706d.a(menu, getMenuInflater()) : super.onCreatePanelMenu(i, menu);
    }

    @Override // android.support.v4.app.d
    final View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f706d.a(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        a(false);
        this.f706d.l();
        this.f706d.p();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f706d.m();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        switch (i) {
            case 0:
                return this.f706d.a(menuItem);
            case 6:
                return this.f706d.b(menuItem);
            default:
                return false;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        switch (i) {
            case 0:
                this.f706d.b(menu);
                break;
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f = false;
        if (this.f705c.hasMessages(2)) {
            this.f705c.removeMessages(2);
            a_();
        }
        this.f706d.i();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f706d.b();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f706d.b();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f705c.sendEmptyMessage(2);
        this.f = true;
        this.f706d.n();
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        this.f705c.removeMessages(2);
        a_();
        this.f706d.n();
    }

    protected void a_() {
        this.f706d.h();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return (i != 0 || menu == null) ? super.onPreparePanel(i, view, menu) : a(view, menu) | this.f706d.a(menu);
    }

    protected boolean a(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        if (this.g) {
            a(true);
        }
        Object objB = b();
        n nVarD = this.f706d.d();
        android.support.v4.g.m<String, v> mVarR = this.f706d.r();
        if (nVarD == null && mVarR == null && objB == null) {
            return null;
        }
        b bVar = new b();
        bVar.f709a = objB;
        bVar.f710b = nVarD;
        bVar.f711c = mVarR;
        return bVar;
    }

    @Override // android.support.v4.app.ai, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        f();
        Parcelable parcelableC = this.f706d.c();
        if (parcelableC != null) {
            bundle.putParcelable("android:support:fragments", parcelableC);
        }
        if (this.l.b() > 0) {
            bundle.putInt("android:support:next_request_index", this.k);
            int[] iArr = new int[this.l.b()];
            String[] strArr = new String[this.l.b()];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.l.b()) {
                    iArr[i2] = this.l.d(i2);
                    strArr[i2] = this.l.e(i2);
                    i = i2 + 1;
                } else {
                    bundle.putIntArray("android:support:request_indicies", iArr);
                    bundle.putStringArray("android:support:request_fragment_who", strArr);
                    return;
                }
            }
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.g = false;
        this.h = false;
        this.f705c.removeMessages(1);
        if (!this.e) {
            this.e = true;
            this.f706d.f();
        }
        this.f706d.b();
        this.f706d.n();
        this.f706d.o();
        this.f706d.g();
        this.f706d.q();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.g = true;
        f();
        this.f705c.sendEmptyMessage(1);
        this.f706d.j();
    }

    public Object b() {
        return null;
    }

    @Deprecated
    public void c() {
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
        printWriter.print(this.e);
        printWriter.print("mResumed=");
        printWriter.print(this.f);
        printWriter.print(" mStopped=");
        printWriter.print(this.g);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.h);
        this.f706d.a(str2, fileDescriptor, printWriter, strArr);
        this.f706d.a().a(str, fileDescriptor, printWriter, strArr);
    }

    void a(boolean z) {
        if (!this.h) {
            this.h = true;
            this.i = z;
            this.f705c.removeMessages(1);
            d();
            return;
        }
        if (z) {
            this.f706d.o();
            this.f706d.c(true);
        }
    }

    void d() {
        this.f706d.c(this.i);
        this.f706d.k();
    }

    public void a(Fragment fragment) {
    }

    public l e() {
        return this.f706d.a();
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (!this.f700b && i != -1) {
            b(i);
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.support.v4.app.a.c
    public final void a(int i) {
        if (!this.j && i != -1) {
            b(i);
        }
    }

    @Override // android.app.Activity, android.support.v4.app.a.InterfaceC0014a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.f706d.b();
        int i2 = (i >> 16) & 65535;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String strA = this.l.a(i3);
            this.l.c(i3);
            if (strA == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment fragmentA = this.f706d.a(strA);
            if (fragmentA == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + strA);
            } else {
                fragmentA.onRequestPermissionsResult(i & 65535, strArr, iArr);
            }
        }
    }

    public void a(Fragment fragment, Intent intent, int i, Bundle bundle) {
        this.f700b = true;
        try {
            if (i == -1) {
                android.support.v4.app.a.a(this, intent, -1, bundle);
            } else {
                b(i);
                android.support.v4.app.a.a(this, intent, ((b(fragment) + 1) << 16) + (65535 & i), bundle);
                this.f700b = false;
            }
        } finally {
            this.f700b = false;
        }
    }

    public void a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        this.f699a = true;
        try {
            if (i == -1) {
                android.support.v4.app.a.a(this, intentSender, i, intent, i2, i3, i4, bundle);
            } else {
                b(i);
                android.support.v4.app.a.a(this, intentSender, ((b(fragment) + 1) << 16) + (65535 & i), intent, i2, i3, i4, bundle);
                this.f699a = false;
            }
        } finally {
            this.f699a = false;
        }
    }

    private int b(Fragment fragment) {
        if (this.l.b() >= 65534) {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
        while (this.l.f(this.k) >= 0) {
            this.k = (this.k + 1) % 65534;
        }
        int i = this.k;
        this.l.b(i, fragment.mWho);
        this.k = (this.k + 1) % 65534;
        return i;
    }

    void a(Fragment fragment, String[] strArr, int i) {
        if (i == -1) {
            android.support.v4.app.a.a(this, strArr, i);
            return;
        }
        b(i);
        try {
            this.j = true;
            android.support.v4.app.a.a(this, strArr, ((b(fragment) + 1) << 16) + (65535 & i));
        } finally {
            this.j = false;
        }
    }

    class a extends k<h> {
        public a() {
            super(h.this);
        }

        @Override // android.support.v4.app.k
        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            h.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // android.support.v4.app.k
        public boolean a(Fragment fragment) {
            return !h.this.isFinishing();
        }

        @Override // android.support.v4.app.k
        public LayoutInflater b() {
            return h.this.getLayoutInflater().cloneInContext(h.this);
        }

        @Override // android.support.v4.app.k
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public h g() {
            return h.this;
        }

        @Override // android.support.v4.app.k
        public void d() {
            h.this.c();
        }

        @Override // android.support.v4.app.k
        public void a(Fragment fragment, Intent intent, int i, Bundle bundle) {
            h.this.a(fragment, intent, i, bundle);
        }

        @Override // android.support.v4.app.k
        public void a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
            h.this.a(fragment, intentSender, i, intent, i2, i3, i4, bundle);
        }

        @Override // android.support.v4.app.k
        public void a(Fragment fragment, String[] strArr, int i) {
            h.this.a(fragment, strArr, i);
        }

        @Override // android.support.v4.app.k
        public boolean a(String str) {
            return android.support.v4.app.a.a((Activity) h.this, str);
        }

        @Override // android.support.v4.app.k
        public boolean e() {
            return h.this.getWindow() != null;
        }

        @Override // android.support.v4.app.k
        public int f() {
            Window window = h.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // android.support.v4.app.k
        public void b(Fragment fragment) {
            h.this.a(fragment);
        }

        @Override // android.support.v4.app.k, android.support.v4.app.i
        public View a(int i) {
            return h.this.findViewById(i);
        }

        @Override // android.support.v4.app.k, android.support.v4.app.i
        public boolean a() {
            Window window = h.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }

    private void f() {
        while (a(e(), d.b.CREATED)) {
        }
    }

    private static boolean a(l lVar, d.b bVar) {
        boolean zA = false;
        for (Fragment fragment : lVar.f()) {
            if (fragment != null) {
                if (fragment.getLifecycle().a().a(d.b.STARTED)) {
                    fragment.mLifecycleRegistry.a(bVar);
                    zA = true;
                }
                l lVarPeekChildFragmentManager = fragment.peekChildFragmentManager();
                zA = lVarPeekChildFragmentManager != null ? a(lVarPeekChildFragmentManager, bVar) | zA : zA;
            }
        }
        return zA;
    }
}
