package com.roblox.client.jni;

import android.os.Handler;
import android.os.Looper;
import com.roblox.client.ActivityNativeMain;
import com.roblox.client.FragmentGlView;
import com.roblox.client.RobloxSettings;
import com.roblox.client.util.g;
import com.roblox.client.util.k;
import com.roblox.engine.jni.NativeGLInterface;
import com.roblox.engine.jni.b;
import java.nio.charset.Charset;
import java.util.concurrent.CountDownLatch;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
public class a implements com.roblox.engine.jni.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f7249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b.a f7250b;

    /* JADX INFO: Access modifiers changed from: private */
    public static FragmentGlView j() {
        return FragmentGlView.getSingleton();
    }

    private Handler k() {
        if (this.f7249a == null) {
            this.f7249a = new Handler(Looper.getMainLooper());
        }
        return this.f7249a;
    }

    @Override // com.roblox.engine.jni.b
    public void a(final boolean z) throws InterruptedException {
        final CountDownLatch countDownLatch = z ? new CountDownLatch(1) : null;
        FragmentGlView fragmentGlViewJ = j();
        if (com.roblox.client.b.bg()) {
            fragmentGlViewJ.getHandler().post(new Runnable() { // from class: com.roblox.client.jni.a.1
                @Override // java.lang.Runnable
                public void run() {
                    NativeGLInterface.nativeCallMessagesFromMainThread();
                    if (z) {
                        countDownLatch.countDown();
                    }
                }
            });
        } else {
            fragmentGlViewJ.getHandler().postAtFrontOfQueue(new Runnable() { // from class: com.roblox.client.jni.a.2
                @Override // java.lang.Runnable
                public void run() {
                    NativeGLInterface.nativeCallMessagesFromMainThread();
                    if (z) {
                        countDownLatch.countDown();
                    }
                }
            });
        }
        if (z) {
            countDownLatch.await();
        }
    }

    @Override // com.roblox.engine.jni.b
    public void a() {
        FragmentGlView fragmentGlViewJ = j();
        if (com.roblox.client.b.bg()) {
            fragmentGlViewJ.getHandler().post(new Runnable() { // from class: com.roblox.client.jni.a.3
                @Override // java.lang.Runnable
                public void run() {
                    NativeGLInterface.nativeCallMessagesFromMainThread();
                }
            });
        } else {
            fragmentGlViewJ.getHandler().postAtFrontOfQueue(new Runnable() { // from class: com.roblox.client.jni.a.4
                @Override // java.lang.Runnable
                public void run() {
                    NativeGLInterface.nativeCallMessagesFromMainThread();
                }
            });
        }
    }

    @Override // com.roblox.engine.jni.b
    public void a(long j, boolean z, String str) {
        FragmentGlView fragmentGlViewJ = j();
        if (fragmentGlViewJ != null) {
            fragmentGlViewJ.handleShowKeyboard(j, z, str);
        }
    }

    @Override // com.roblox.engine.jni.b
    public void a(long j, boolean z, byte[] bArr) {
        FragmentGlView fragmentGlViewJ = j();
        if (fragmentGlViewJ != null) {
            fragmentGlViewJ.handleShowKeyboard(j, z, new String(bArr, Charset.forName(Constants.UTF8_NAME)));
        }
    }

    @Override // com.roblox.engine.jni.b
    public void b() {
        FragmentGlView fragmentGlViewJ = j();
        if (fragmentGlViewJ != null) {
            fragmentGlViewJ.handleHideKeyboard();
        }
    }

    @Override // com.roblox.engine.jni.b
    public void a(long j, String str, String str2) {
        FragmentGlView fragmentGlViewJ = j();
        if (fragmentGlViewJ == null) {
            g.d("rbx.purchaseflow", "promptNativePurchase. mSingleton==null.");
        } else {
            fragmentGlViewJ.promptNativePurchase(j, str, str2);
        }
    }

    @Override // com.roblox.engine.jni.b
    public void c() {
        g.b("rbx.engine", "exitGame:");
        FragmentGlView fragmentGlViewJ = j();
        if (fragmentGlViewJ != null) {
            fragmentGlViewJ.handleGameExitedEvent(true);
        }
    }

    @Override // com.roblox.engine.jni.b
    public void a(int i) {
        g.b("rbx.engine", "exitGameWithError: errorID = " + i);
        FragmentGlView fragmentGlViewJ = j();
        if (fragmentGlViewJ != null) {
            fragmentGlViewJ.showGameErrorDialogWithErrorId(i);
        }
    }

    @Override // com.roblox.engine.jni.b
    public void d() {
        g.b("rbx.engine", "gameDidLeave:");
        FragmentGlView fragmentGlViewJ = j();
        if (fragmentGlViewJ != null) {
            fragmentGlViewJ.tryToFinishActivity(102);
        }
    }

    @Override // com.roblox.engine.jni.b
    public void e() {
        g.b("rbx.engine", "onLeaveGameFinished:");
        k().post(new Runnable() { // from class: com.roblox.client.jni.a.5
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f7250b != null) {
                    a.this.f7250b.a();
                }
            }
        });
    }

    @Override // com.roblox.engine.jni.b
    public void a(String str) {
        j().getInputListener().a(true);
    }

    @Override // com.roblox.engine.jni.b
    public String f() {
        return RobloxSettings.baseUrlAPI();
    }

    @Override // com.roblox.engine.jni.b
    public int g() {
        FragmentGlView fragmentGlViewJ = j();
        if (fragmentGlViewJ == null || fragmentGlViewJ.getContext() == null) {
            return 0;
        }
        return k.a(fragmentGlViewJ.getContext());
    }

    @Override // com.roblox.engine.jni.b
    public void b(int i) {
        g.c("rbx.engine", "screenOrientationChanged: newOrientation = " + i);
        FragmentGlView fragmentGlViewJ = j();
        if (fragmentGlViewJ != null && fragmentGlViewJ.getContext() != null && fragmentGlViewJ.shouldRespectDatamodelOrientation()) {
            switch (i) {
                case 0:
                    fragmentGlViewJ.getActivity().setRequestedOrientation(8);
                    break;
                case 1:
                    fragmentGlViewJ.getActivity().setRequestedOrientation(0);
                    break;
                case 2:
                    fragmentGlViewJ.getActivity().setRequestedOrientation(6);
                    break;
                case 3:
                    fragmentGlViewJ.getActivity().setRequestedOrientation(7);
                    break;
                case 4:
                    fragmentGlViewJ.getActivity().setRequestedOrientation(2);
                    break;
            }
        }
    }

    @Override // com.roblox.engine.jni.b
    public void a(String str, String str2) {
        FragmentGlView fragmentGlViewJ = j();
        if (fragmentGlViewJ != null && fragmentGlViewJ.getActivity() != null) {
            ActivityNativeMain.b(fragmentGlViewJ.getActivity(), str2, str);
        }
    }

    @Override // com.roblox.engine.jni.b
    public void b(final String str, final String str2) {
        k().post(new Runnable() { // from class: com.roblox.client.jni.a.6
            @Override // java.lang.Runnable
            public void run() {
                a.j().onDataModelNotification(str, str2);
            }
        });
    }

    @Override // com.roblox.engine.jni.b
    public void a(long j) {
        g.c("rbx.engine", "gameLoadedCallback() " + j);
        j().onGameLoaded(j);
    }

    @Override // com.roblox.engine.jni.b
    public void b(String str) {
        g.c("rbx.engine", "onLuaTextBoxChangedCallback() " + str);
        j().onLuaTextBoxChanged(str);
    }

    @Override // com.roblox.engine.jni.b
    public void h() {
        j().onLuaTextBoxPositionChanged();
    }

    @Override // com.roblox.engine.jni.b
    public void a(b.a aVar) {
        this.f7250b = aVar;
    }
}
