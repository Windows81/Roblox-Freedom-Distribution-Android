package com.roblox.client;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.roblox.client.e.q;
import com.roblox.client.e.r;
import com.roblox.client.e.x;
import com.roblox.engine.b;
import com.roblox.engine.components.a;
import com.roblox.engine.jni.NativeGLInterface;
import com.roblox.engine.jni.NativeGLJavaInterface;
import java.util.Locale;
import org.fmod.FMOD;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class FragmentGlView extends m implements SurfaceHolder.Callback, b.a {
    private static final int SURFACE_CREATED = 2;
    private static final int SURFACE_DESTROYED = 4;
    private static final int SURFACE_INVALID = -1;
    private static final int SURFACE_NOT_READY = 0;
    protected static final String TAG = "rbx.glview";
    private View mContentMain;
    protected com.roblox.engine.components.a mGlobalLayoutTool;
    public com.roblox.client.purchase.google.b mGoogleStoreMgr;
    private com.roblox.engine.b mInputListener;
    private FrameLayout mLoadingView;
    private b mOnGameEventListener;
    private ViewTreeObserver.OnGlobalLayoutListener mOnGlobalLayoutListener;
    private View mRetryView;
    private int mSurfaceHeight;
    private SurfaceView mSurfaceView;
    private int mSurfaceWidth;
    private View mTabWidget;
    private static FragmentGlView mSingleton = null;
    private static boolean hasDoneGameGlobalInit = false;
    private a gameParams = new a();
    protected RbxKeyboard mGlEditTextView = null;
    private long mCurrentTextBox = 0;
    private long mPlayerPtr = 0;
    private String mProductId = "";
    private boolean mIs3DApp = true;
    private boolean mGraphicsHaveStarted = false;
    private boolean mSurfaceCreated = false;
    private int mSurfaceState = -1;
    private boolean isRenderingStopped = false;
    protected boolean mIsGameLoaded = false;
    protected boolean mIsAppReady = false;
    private com.roblox.engine.e mScreenDpiTool = new com.roblox.engine.e();
    private com.roblox.client.purchase.c mGooglePurchaseListener = new com.roblox.client.purchase.c() { // from class: com.roblox.client.FragmentGlView.1
        @Override // com.roblox.client.purchase.c
        public void a() {
        }

        @Override // com.roblox.client.purchase.c
        public void b() {
        }

        @Override // com.roblox.client.purchase.c
        public void c() {
        }

        @Override // com.roblox.client.purchase.c
        public void a(final com.roblox.client.purchase.d dVar) {
            final CharSequence charSequenceA;
            android.support.v4.app.h activity = FragmentGlView.this.getActivity();
            if (activity != null) {
                if (dVar.b()) {
                    charSequenceA = FragmentGlView.this.getString(R.string.Purchasing_RobloxProducts_Response_PurchaseSuccessfulAndroid);
                } else {
                    charSequenceA = dVar.a(activity);
                }
                FragmentGlView.this.mUIThreadHandler.post(new Runnable() { // from class: com.roblox.client.FragmentGlView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (dVar.a()) {
                            FragmentGlView.this.contactSupport(charSequenceA);
                        } else {
                            FragmentGlView.this.alertMessageFromServerOkButton(charSequenceA.toString());
                        }
                    }
                });
            }
        }
    };
    protected Handler mUIThreadHandler = null;

    interface b {
        void a(long j);

        void b(long j);

        void b(boolean z);
    }

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f6411a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f6412b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f6413c = "";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f6414d = "";
        public long e = 0;
        public String f = "";
        public String g = "";
        public boolean h = false;

        public a() {
        }
    }

    public Handler getHandler() {
        return this.mUIThreadHandler;
    }

    public com.roblox.engine.b getInputListener() {
        return this.mInputListener;
    }

    public FragmentGlView() {
        mSingleton = this;
        NativeGLJavaInterface.setImplementation(new com.roblox.client.jni.a());
        com.roblox.engine.a.a(com.roblox.client.b.ba());
        com.roblox.engine.a.b(com.roblox.client.b.bz());
        com.roblox.engine.a.a(com.roblox.client.b.bA());
    }

    public static FragmentGlView getSingleton() {
        return mSingleton;
    }

    public boolean shouldRespectDatamodelOrientation() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof b) {
            this.mOnGameEventListener = (b) context;
        }
    }

    @Override // com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.roblox.client.util.g.b(TAG, "onCreate: savedInstanceState = " + bundle);
        this.mUIThreadHandler = new Handler(Looper.getMainLooper());
        setRetainInstance(true);
        FMOD.init(getActivity());
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        com.roblox.client.util.g.b(TAG, "onDestroy");
        FMOD.close();
        com.google.android.gms.analytics.d.a(getActivity().getBaseContext()).f();
        getActivity().getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(null);
        tryToFinishActivity(103);
        super.onDestroy();
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        com.roblox.client.util.g.c(TAG, "onStart:");
        NativeGLInterface.nativeOnFragmentStart();
        RobloxSettings.enableNDKProfiler(true);
    }

    public void stopRendering() {
        if (!this.isRenderingStopped && this.mSurfaceView != null) {
            this.isRenderingStopped = true;
            NativeGLInterface.nativeRequestStopRendering();
            NativeGLInterface.setTaskSchedulerBackgroundMode(true);
        }
    }

    public void resumeRendering() {
        if (hasValidSurfaceView()) {
            if (!this.mGraphicsHaveStarted) {
                com.roblox.client.util.g.b(TAG, "resumeRendering() startGraphics...");
                updateSurface();
            } else {
                resumeRenderingIfStopped();
            }
        }
    }

    public void resumeRenderingIfStopped() {
        if (hasValidSurfaceView() && this.mGraphicsHaveStarted && this.isRenderingStopped) {
            com.roblox.client.util.g.b(TAG, "resumeRenderingIfStopped() resume...");
            this.isRenderingStopped = false;
            NativeGLInterface.nativeRequestResumeRendering();
            NativeGLInterface.setTaskSchedulerBackgroundMode(false);
        }
    }

    private boolean hasValidSurfaceView() {
        return this.mSurfaceView != null && this.mSurfaceWidth > 0 && this.mSurfaceHeight > 0 && this.mSurfaceCreated;
    }

    public void stopDataModel() {
        com.roblox.client.util.g.b(TAG, "stopDataModel: surfaceState = " + this.mSurfaceState);
        if (this.mGraphicsHaveStarted) {
            this.mGraphicsHaveStarted = false;
            NativeGLInterface.nativeShutDownGraphics(this.mSurfaceView.getHolder().getSurface());
        }
        NativeGLInterface.nativeStopGame();
        this.mSurfaceState = -1;
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        com.roblox.client.util.g.c(TAG, "onStop: surfaceState = " + this.mSurfaceState);
        NativeGLInterface.nativeOnFragmentStop();
        RobloxSettings.enableNDKProfiler(false);
        if (!com.roblox.client.b.bj() && this.mSurfaceState < 2) {
            this.mSurfaceState = 4;
        }
        if (this.mInputListener != null) {
            this.mInputListener.a();
        }
        getActivity().getWindow().clearFlags(128);
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        com.roblox.client.http.b.a();
        if (this.mInputListener != null) {
            this.mInputListener.a(false);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        View currentFocus = getActivity().getCurrentFocus();
        if (currentFocus != null) {
            p.a(getActivity(), currentFocus);
        }
        super.onPause();
        com.roblox.client.http.b.a(getActivity().getCacheDir(), null);
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        if (this.mSurfaceState == 2) {
            NativeGLInterface.nativeOnLowMemory();
        }
    }

    public void handleGameExitedEvent(boolean z) {
        com.roblox.client.util.g.b(TAG, "handleGameExitedEvent: success = " + z);
        tryToFinishActivity(z ? 102 : 103);
        if (this.mOnGameEventListener != null) {
            this.mOnGameEventListener.b(z);
        }
    }

    public void tryToFinishActivity(int i) {
        android.support.v4.app.h activity;
        if (!this.mIs3DApp && (activity = getActivity()) != null && !activity.isFinishing()) {
            com.roblox.client.util.g.c(TAG, "tryToFinishActivity: call finish() on activity = " + activity);
            activity.setResult(i);
            activity.finish();
        }
    }

    private boolean setupGameParams() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.gameParams.h = arguments.getBoolean("vrEnabled", false);
            this.gameParams.f6412b = arguments.getLong("userId");
            this.gameParams.f6411a = arguments.getInt("joinRequestType");
            this.gameParams.f6413c = arguments.getString("appStarterPlace");
            this.gameParams.f6414d = arguments.getString("appStarterScript");
            this.gameParams.e = arguments.getLong("placeId");
            this.gameParams.f = arguments.getString("accessCode");
            this.gameParams.g = arguments.getString("gameId");
            this.mIs3DApp = arguments.getBoolean("is3DApp");
        }
        return arguments != null;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        com.roblox.client.util.g.c(TAG, "onCreateView: savedInstanceState = " + bundle + ", surfaceState = " + this.mSurfaceState);
        if (!setupGameParams()) {
            com.roblox.client.util.g.e(TAG, "Trying to create GLView with no valid arguments.");
            return null;
        }
        this.mGoogleStoreMgr = com.roblox.client.purchase.google.b.a(getActivity());
        View viewInflate = layoutInflater.inflate(R.layout.fragment_glview, viewGroup, false);
        RobloxSettings.updateNativeSettings();
        if ((com.roblox.client.b.ab() || RobloxSettings.isChrome()) && bundle != null && this.mSurfaceState == 2) {
            com.roblox.client.util.g.b(TAG, "onCreateView: The game is being recreated. Keep the current surface state.");
        } else {
            this.mSurfaceState = 0;
        }
        this.mLoadingView = initLoadingView(layoutInflater, viewInflate);
        this.mRetryView = viewInflate.findViewById(R.id.retry_layout);
        this.mRetryView.findViewById(R.id.reconnect_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.FragmentGlView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!FragmentGlView.this.alertIfNetworkNotConnected()) {
                    FragmentGlView.this.mLoadingView.setVisibility(0);
                    FragmentGlView.this.mRetryView.setVisibility(8);
                    FragmentGlView.this.getNativeClientSettings();
                }
            }
        });
        this.mGlEditTextView = getEditTextView(viewInflate);
        initGlEditTextView();
        initSurfaceView(viewInflate);
        this.mInputListener = new com.roblox.engine.b(getActivity(), this.mSurfaceView, this, com.roblox.client.b.ak());
        this.mSurfaceView.setOnTouchListener(this.mInputListener);
        getNativeClientSettings();
        return viewInflate;
    }

    protected FrameLayout initLoadingView(LayoutInflater layoutInflater, View view) {
        return (FrameLayout) view.findViewById(R.id.loading_layout);
    }

    protected FrameLayout getLoadingView() {
        return this.mLoadingView;
    }

    @Override // com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.mTabWidget = getView().getRootView().findViewById(android.R.id.tabs);
        this.mContentMain = getView().getRootView().findViewById(R.id.content_main);
    }

    protected RbxKeyboard getEditTextView(View view) {
        RbxKeyboard rbxKeyboard = (RbxKeyboard) view.findViewById(R.id.gl_edit_text);
        rbxKeyboard.setBackgroundColor(-1);
        rbxKeyboard.setTextColor(-16777216);
        return rbxKeyboard;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.roblox.client.FragmentGlView$6] */
    public void getNativeClientSettings() {
        new AsyncTask<Void, Void, Integer>() { // from class: com.roblox.client.FragmentGlView.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Integer doInBackground(Void... voidArr) {
                return Integer.valueOf(NativeGLInterface.nativeInitClientSettings(com.roblox.client.b.aF(), null));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onPostExecute(Integer num) {
                if (!com.roblox.client.b.aF() || num.intValue() == 0) {
                    FragmentGlView.this.mRetryView.setVisibility(8);
                    FragmentGlView.this.mSurfaceView.setVisibility(0);
                } else {
                    FragmentGlView.this.mRetryView.setVisibility(0);
                    FragmentGlView.this.mSurfaceView.setVisibility(8);
                }
                if (FragmentGlView.this.hideLoadingViewOnSettingsRetrieved()) {
                    FragmentGlView.this.getLoadingView().setVisibility(8);
                }
                if (com.roblox.client.b.aF()) {
                    FragmentGlView.this.reportClientSettingEvents(num);
                }
            }
        }.execute(new Void[0]);
    }

    protected boolean hideLoadingViewOnSettingsRetrieved() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportClientSettingEvents(Integer num) {
        com.roblox.client.b.c.a("EngineInit", this.gameParams.f6411a == 5 ? "Settings3DApp" : "SettingsGame", num.intValue() == 0 ? "OK" : "Error");
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDestroyView() {
        com.roblox.client.util.g.c(TAG, "onDestroyView:");
        if (this.mOnGlobalLayoutListener != null) {
            this.mGlEditTextView.getViewTreeObserver().removeOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
            this.mOnGlobalLayoutListener = null;
        }
        super.onDestroyView();
    }

    public int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return (int) p.a(getContext(), 24);
    }

    private void initGlEditTextView() {
        this.mGlEditTextView.setVisibility(8);
        this.mGlEditTextView.setImeOptions(268435460);
        this.mGlEditTextView.setSingleLine(true);
        this.mGlEditTextView.setText("");
        a.C0135a c0135a = new a.C0135a();
        c0135a.f7965a = getResources().getDimensionPixelSize(R.dimen.mainToolbarHeight);
        c0135a.f7966b = getResources().getDimensionPixelSize(R.dimen.mainTabWidgetHeight);
        this.mGlobalLayoutTool = new com.roblox.engine.components.a(getContext(), c0135a) { // from class: com.roblox.client.FragmentGlView.7
            @Override // com.roblox.engine.components.a
            public com.roblox.engine.components.b a() {
                return com.roblox.engine.components.b.a(FragmentGlView.this.mGlEditTextView.getRootView(), FragmentGlView.this.getActivity().getWindowManager(), FragmentGlView.this.mTabWidget, FragmentGlView.this.mContentMain);
            }
        };
        this.mOnGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.roblox.client.FragmentGlView.8
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (!FragmentGlView.this.isAdded()) {
                    com.roblox.client.util.g.d(FragmentGlView.TAG, "onGlobalLayout() fragment not attached");
                } else {
                    FragmentGlView.this.mGlobalLayoutTool.a(false);
                }
            }
        };
        this.mGlEditTextView.getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
        this.mGlEditTextView.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.FragmentGlView.9
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                FragmentGlView.this.syncTextboxTextAndCursorPosition();
                if (i == 4) {
                    String string = textView.getText().toString();
                    if (FragmentGlView.this.mSurfaceState == 2) {
                        NativeGLInterface.nativePassText(FragmentGlView.this.mCurrentTextBox, string, true, textView.getSelectionStart());
                    } else {
                        com.roblox.client.util.g.d(FragmentGlView.TAG, "nativePassText not ready");
                    }
                    FragmentGlView.this.mGlEditTextView.setCurrentTextBox(0L);
                    textView.setVisibility(8);
                    p.a(textView.getContext(), textView);
                    return true;
                }
                return false;
            }
        });
        this.mGlEditTextView.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.FragmentGlView.10
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                FragmentGlView.this.syncTextboxTextAndCursorPosition();
                if (FragmentGlView.this.mSurfaceState == 2) {
                    NativeGLInterface.nativePassText(FragmentGlView.this.mCurrentTextBox, charSequence.toString(), false, i + i3);
                } else {
                    com.roblox.client.util.g.d(FragmentGlView.TAG, "nativePassText not ready");
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }
        });
    }

    @Override // com.roblox.engine.b.a
    public float getCurrentScreenDensity() {
        return this.mScreenDpiTool.a(getContext());
    }

    private void startApp(String str, String str2, long j) {
        com.roblox.client.util.g.b(TAG, "startApp");
        NativeGLInterface.nativeStartApp(this.mSurfaceView.getHolder().getSurface(), str, str2, j, new com.roblox.engine.f(com.roblox.client.b.c.a()).b(getActivity()), this.mSurfaceWidth, this.mSurfaceHeight, getActivity().getPackageManager().hasSystemFeature("android.hardware.touchscreen"), getActivity().getPackageManager().hasSystemFeature("android.hardware.type.pc"), getActivity().getPackageManager().hasSystemFeature("android.hardware.type.pc"), "" + Build.VERSION.SDK_INT, d.a(), RobloxSettings.version(), getIso2CountryCode(), 0L, getCurrentScreenDensity(), com.roblox.client.q.d.a().g(), com.roblox.client.q.d.a().f(), com.roblox.client.q.d.a().k(), com.roblox.client.n.a.c(), com.roblox.client.n.a.d());
    }

    private void startGame(long j, long j2, String str, String str2, int i) {
        com.roblox.client.util.g.b(TAG, "startGame");
        NativeGLInterface.nativeStartGame(this.mSurfaceView.getHolder().getSurface(), j, j2, str, str2, i, new com.roblox.engine.f(com.roblox.client.b.c.a()).b(getActivity()), this.mSurfaceWidth, this.mSurfaceHeight, getActivity().getPackageManager().hasSystemFeature("android.hardware.touchscreen"), getActivity().getPackageManager().hasSystemFeature("android.hardware.type.pc"), getActivity().getPackageManager().hasSystemFeature("android.hardware.type.pc"), "" + Build.VERSION.SDK_INT, d.a(), RobloxSettings.version(), getIso2CountryCode(), 0L, getCurrentScreenDensity());
        if (this.mOnGameEventListener != null) {
            this.mOnGameEventListener.a(j);
        }
    }

    @Override // com.roblox.engine.b.a
    public boolean isSurfaceCreated() {
        return this.mSurfaceState == 2;
    }

    private void initSurfaceView(View view) {
        com.roblox.client.util.g.c(TAG, "initSurfaceView: ...");
        this.mSurfaceView = (SurfaceView) view.findViewById(R.id.surfaceview);
        this.mSurfaceView.setFocusable(true);
        this.mSurfaceView.setFocusableInTouchMode(true);
        this.mSurfaceView.getHolder().addCallback(this);
    }

    private void updateSurfaceParams(int i, int i2) {
        float currentScreenDensity = getCurrentScreenDensity();
        this.mSurfaceWidth = Math.round(i / currentScreenDensity);
        this.mSurfaceHeight = Math.round(i2 / currentScreenDensity);
        if (Build.MODEL.equals("SM-T230NU")) {
            this.mSurfaceWidth = 960;
            this.mSurfaceHeight = 600;
            ViewGroup.LayoutParams layoutParams = this.mSurfaceView.getLayoutParams();
            layoutParams.width = 1280;
            layoutParams.height = 800;
            this.mSurfaceView.setLayoutParams(layoutParams);
            this.mSurfaceView.getHolder().setFixedSize(this.mSurfaceWidth, this.mSurfaceHeight);
        }
    }

    public boolean isGameLoaded() {
        return this.mIsGameLoaded;
    }

    public boolean isAppReady() {
        return this.mIsAppReady;
    }

    public void onGameLoaded(long j) {
        this.mIsGameLoaded = true;
        com.roblox.client.util.g.c(TAG, getClass().getSimpleName() + ".onGameLoaded() " + j);
        if (this.mOnGameEventListener != null) {
            this.mOnGameEventListener.b(j);
        }
    }

    public void onLuaTextBoxChanged(String str) {
        com.roblox.client.util.g.c(TAG, getClass().getSimpleName() + ".onLuaTextBoxChanged() " + str);
    }

    public void onLuaTextBoxPositionChanged() {
    }

    public void onAppReady(String str) {
        this.mIsAppReady = true;
        com.roblox.client.util.g.c(TAG, getClass().getSimpleName() + ".onAppReady() " + str);
        if (com.roblox.client.b.bR()) {
            android.support.v4.app.h activity = getActivity();
            if (activity instanceof ActivityNativeMain) {
                com.roblox.client.feature.l lVarN = ((ActivityNativeMain) activity).n();
                if (!(lVarN instanceof com.roblox.client.feature.g)) {
                    com.roblox.client.util.g.c(TAG, "onAppReady() stopRendering Lua App because active feature is " + lVarN.j());
                    stopRendering();
                }
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        com.roblox.client.util.g.b(TAG, "surfaceChanged: ...");
        updateSurfaceParams(i2, i3);
        if (com.roblox.client.b.bm()) {
            if (isVisible() || this.mGraphicsHaveStarted) {
                updateSurface();
                return;
            }
            return;
        }
        updateSurface();
    }

    public void updateSurface() {
        com.roblox.client.util.g.b(TAG, "updateSurface() isVisible:" + isVisible());
        if (this.mSurfaceState == 0) {
            this.mSurfaceState = 2;
            this.mGraphicsHaveStarted = true;
            if (!hasDoneGameGlobalInit) {
                hasDoneGameGlobalInit = true;
                NativeGLInterface.nativeGameGlobalInit();
            }
            if (this.gameParams.f6411a == 5) {
                startApp(this.gameParams.f6413c, this.gameParams.f6414d, this.gameParams.f6412b);
                i.a("startup", "dataModel");
                return;
            } else {
                startGame(this.gameParams.e, this.gameParams.f6412b, this.gameParams.f, this.gameParams.g, this.gameParams.f6411a);
                return;
            }
        }
        if (this.mSurfaceState == 2) {
            Surface surface = this.mSurfaceView.getHolder().getSurface();
            if (this.mGraphicsHaveStarted) {
                NativeGLInterface.nativeUpdateGraphics(surface, this.mSurfaceWidth, this.mSurfaceHeight);
                return;
            }
            com.roblox.client.util.g.d(TAG, "surfaceChanged: *** nativeStartUpGraphics ***");
            this.mGraphicsHaveStarted = true;
            NativeGLInterface.nativeStartUpGraphics(surface, this.mSurfaceWidth, this.mSurfaceHeight);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        com.roblox.client.util.g.b(TAG, "surfaceCreated: ...");
        this.mSurfaceCreated = true;
        NativeGLInterface.setTaskSchedulerBackgroundMode(false);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        com.roblox.client.util.g.b(TAG, "surfaceDestroyed: surfaceState = " + this.mSurfaceState);
        this.mSurfaceCreated = false;
        if (this.mSurfaceState == 2) {
            if (this.mGraphicsHaveStarted) {
                this.mGraphicsHaveStarted = false;
                NativeGLInterface.nativeShutDownGraphics(this.mSurfaceView.getHolder().getSurface());
            }
            NativeGLInterface.setTaskSchedulerBackgroundMode(true);
        }
    }

    public void handleShowKeyboard(long j, boolean z, String str) {
        com.roblox.client.util.g.c(TAG, "handleShowKeyboard: ...");
        if (this.mGlEditTextView != null) {
            this.mCurrentTextBox = j;
            this.mGlEditTextView.setCurrentTextBox(j);
            this.mUIThreadHandler.post(getShowKeyboardRunnable(z, str));
        }
    }

    protected Runnable getShowKeyboardRunnable(boolean z, String str) {
        return new c(str, z) { // from class: com.roblox.client.FragmentGlView.11
            @Override // com.roblox.client.FragmentGlView.c
            void a(boolean z2) {
                try {
                    float currentScreenDensity = FragmentGlView.this.getCurrentScreenDensity();
                    int i = z2 ? 36 : -150;
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) FragmentGlView.this.mGlEditTextView.getLayoutParams();
                    layoutParams.topMargin = (int) (i * currentScreenDensity);
                    FragmentGlView.this.mGlEditTextView.setLayoutParams(layoutParams);
                } catch (IllegalStateException | NullPointerException e) {
                    com.roblox.client.util.g.d(FragmentGlView.TAG, "Error getting screen density. Fragment detached?");
                }
            }
        };
    }

    public void handleHideKeyboard() {
        com.roblox.client.util.g.c(TAG, "handleHideKeyboard: ...");
        if (this.mGlEditTextView != null) {
            this.mCurrentTextBox = 0L;
            this.mGlEditTextView.setCurrentTextBox(0L);
            this.mUIThreadHandler.post(new Runnable() { // from class: com.roblox.client.FragmentGlView.12
                @Override // java.lang.Runnable
                public void run() {
                    p.a(FragmentGlView.this.mGlEditTextView.getContext(), FragmentGlView.this.mGlEditTextView);
                    FragmentGlView.this.mGlEditTextView.setVisibility(8);
                }
            });
        }
    }

    abstract class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f6415a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f6417c;

        abstract void a(boolean z);

        c(String str, boolean z) {
            this.f6415a = str;
            this.f6417c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentGlView.this.mGlEditTextView.setVisibility(0);
            a(this.f6417c);
            String str = this.f6415a;
            FragmentGlView.this.mGlEditTextView.setText(str);
            FragmentGlView.this.mGlEditTextView.requestFocus();
            ((InputMethodManager) FragmentGlView.this.mSurfaceView.getContext().getSystemService("input_method")).showSoftInput(FragmentGlView.this.mGlEditTextView, 2);
            FragmentGlView.this.mGlEditTextView.setSelection(str.length());
            FragmentGlView.this.syncTextboxTextAndCursorPosition();
        }
    }

    private String getIso2CountryCode() {
        String[] iSOCountries = Locale.getISOCountries();
        return iSOCountries.length > 0 ? iSOCountries[0] : "";
    }

    public void promptNativePurchase(long j, String str, String str2) {
        this.mPlayerPtr = j;
        this.mProductId = str;
        if (!this.mGoogleStoreMgr.a(str2, str, getActivity(), j, this.mGooglePurchaseListener)) {
            this.mUIThreadHandler.post(new Runnable() { // from class: com.roblox.client.FragmentGlView.2
                @Override // java.lang.Runnable
                public void run() {
                    FragmentGlView.this.alertOk(R.string.Purchasing_RobloxProducts_Response_PurchaseSetupGooglePlay);
                }
            });
            inGamePurchaseFinished(false, j, str);
            com.roblox.client.b.c.a("GoogleStoreInitiate", "InGame", "FailedPlayStoreNotSetUp");
            return;
        }
        com.roblox.client.b.c.a("GoogleStoreInitiate", "InGame", "Started");
    }

    public static void inGamePurchaseFinished(boolean z, long j, String str) {
        com.roblox.client.util.g.b("rbx.purchaseflow", "In-Game purchase finished: success = " + z + ", player=" + j + ", productId=" + str);
        if (mSingleton == null || mSingleton.mSurfaceState != 2) {
            com.roblox.client.util.g.b("rbx.purchaseflow", "FragmentGlView.inGamePurchaseFinished: Singleton is null or surface is not created.");
            return;
        }
        if (mSingleton.mPlayerPtr == 0) {
            com.roblox.client.util.g.b("rbx.purchaseflow", "FragmentGlView.inGamePurchaseFinished: playerPtr == 0.");
            return;
        }
        com.roblox.client.util.g.b("rbx.purchaseflow", "Native call. Success=" + z + ", player=" + j + ", productId=" + str);
        NativeGLInterface.nativeInGamePurchaseFinished(z, j, str);
        mSingleton.mProductId = "";
        mSingleton.mPlayerPtr = 0L;
    }

    public static void inGamePurchaseFinishedFromAmazonPurchasingActivity(Intent intent) {
        com.roblox.client.util.g.b("rbx.amazon.purchaseflow", "inGamePurchaseFinishedFromAmazonPurchasingActivity called");
        if (mSingleton == null) {
            com.roblox.client.util.g.b("rbx.amazon.purchaseflow", "inGamePurchaseFinishedFromAmazonPurchasingActivity. mSingleton == null.");
            return;
        }
        String stringExtra = intent.getStringExtra("productId");
        final com.roblox.client.purchase.d dVar = (com.roblox.client.purchase.d) intent.getSerializableExtra("purchaseResult");
        inGamePurchaseFinished(intent.getBooleanExtra("success", false), mSingleton.mPlayerPtr, stringExtra);
        final android.support.v4.app.h activity = mSingleton.getActivity();
        if (activity != null) {
            mSingleton.mUIThreadHandler.post(new Runnable() { // from class: com.roblox.client.FragmentGlView.3
                @Override // java.lang.Runnable
                public void run() {
                    FragmentGlView.mSingleton.alertMessageFromServerOkButton(dVar.a(activity).toString());
                }
            });
        }
    }

    public void showGameErrorDialogWithErrorId(int i) {
        showGameErrorDialog(getCorrespondingErrorStringResourceId(i));
    }

    private void showGameErrorDialog(final int i) {
        this.mUIThreadHandler.post(new Runnable() { // from class: com.roblox.client.FragmentGlView.4
            @Override // java.lang.Runnable
            public void run() {
                android.support.v4.app.h activity = FragmentGlView.this.getActivity();
                if (activity != null) {
                    com.roblox.client.locale.a.a().b(activity);
                    new AlertDialog.Builder(activity).setMessage(i).setNegativeButton(activity.getString(R.string.CommonUI_Messages_Action_Close), new DialogInterface.OnClickListener() { // from class: com.roblox.client.FragmentGlView.4.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            dialogInterface.dismiss();
                            FragmentGlView.this.handleGameExitedEvent(false);
                        }
                    }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.roblox.client.FragmentGlView.4.1
                        @Override // android.content.DialogInterface.OnCancelListener
                        public void onCancel(DialogInterface dialogInterface) {
                            dialogInterface.dismiss();
                            FragmentGlView.this.handleGameExitedEvent(false);
                        }
                    }).create().show();
                }
            }
        });
    }

    private int getCorrespondingErrorStringResourceId(int i) {
        switch (i) {
            case 3:
                return R.string.Game_Launch_Response_GameStartFailureDisabled;
            case 4:
                return R.string.Game_Launch_Response_GameStartFailureError;
            case 5:
                return R.string.Game_Launch_Response_GameStartFailureGameEnded;
            case 6:
                return R.string.Game_Launch_Response_GameStartFailureGameFull;
            case 7:
            case 8:
            case 9:
            default:
                com.roblox.client.util.g.d(TAG, "(Game failed to start) Unexpected errorId=[" + i + "].");
                return R.string.Game_Launch_Response_GameStartFailureUnknown;
            case 10:
                return R.string.Game_Launch_Response_GameStartFailureUserLeft;
            case 11:
                return R.string.Game_Launch_Response_GameStartFailureRestricted;
            case 12:
                return R.string.Game_Launch_Response_GameStartFailureJoinScript;
        }
    }

    public void onDataModelNotification(String str, String str2) {
        long jOptLong;
        String str3;
        int iIntValue = 0;
        com.roblox.client.util.g.b(TAG, "onDataModelNotification() type:" + str + " data:" + str2);
        boolean zBV = com.roblox.client.b.bV();
        if (str.equals("VIEW_PROFILE")) {
            q qVar = new q("PROFILE_TAG", zBV);
            qVar.a(str2);
            org.greenrobot.eventbus.c.a().c(qVar);
            return;
        }
        if (str.equals("REPORT_ABUSE")) {
            q qVar2 = new q("ABUSE_REPORT_TAG");
            qVar2.a(str2);
            org.greenrobot.eventbus.c.a().c(qVar2);
            return;
        }
        if (str.equals("VIEW_GAME_DETAILS")) {
            q qVar3 = new q("GAME_DETAILS_TAG", zBV);
            qVar3.a(str2);
            org.greenrobot.eventbus.c.a().c(qVar3);
            return;
        }
        if (str.equals("SHOW_TAB_BAR")) {
            org.greenrobot.eventbus.c.a().c(new r(true));
            return;
        }
        if (str.equals("HIDE_TAB_BAR")) {
            org.greenrobot.eventbus.c.a().c(new r(false));
            return;
        }
        if (str.equals("UNREAD_COUNT")) {
            try {
                iIntValue = Integer.valueOf(str2).intValue();
            } catch (NumberFormatException e) {
            }
            com.roblox.client.chat.a.a.a().b(iIntValue);
            org.greenrobot.eventbus.c.a().c(new x(iIntValue));
            return;
        }
        if (str.equals("PRIVACY_SETTINGS")) {
            q qVar4 = new q("SETTINGS_TAG", zBV);
            qVar4.a(RobloxSettings.getSettingsPrivacyPagePath());
            org.greenrobot.eventbus.c.a().c(qVar4);
            return;
        }
        if (str.equals("BACK_BUTTON_NOT_CONSUMED")) {
            org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.d());
            return;
        }
        if (str.equals("PURCHASE_ROBUX")) {
            new com.roblox.client.j.d(getSingleton(), "tabAvatar").a();
            return;
        }
        if (str.equals("VIEW_NOTIFICATIONS")) {
            new com.roblox.client.j.c(getSingleton()).a();
            return;
        }
        if (str.equals("APP_READY")) {
            onAppReady(str2);
            return;
        }
        if (!str.equals("CLOSE_MODAL")) {
            if (str.equals("VIEW_GAME_DETAILS_ANIMATED")) {
                q qVar5 = new q("ANIMATED_ASSET_DETAILS_TAG", zBV);
                qVar5.a(str2);
                org.greenrobot.eventbus.c.a().c(qVar5);
                return;
            }
            if (str.equals("LAUNCH_GAME")) {
                try {
                    jOptLong = new JSONObject(str2).optLong("placeId");
                } catch (JSONException e2) {
                    com.roblox.client.util.g.d(TAG, "No placeId for data model notification LAUNCH_GAME");
                    jOptLong = 0;
                }
                if (jOptLong > 0) {
                    ActivityNativeMain.a(com.roblox.client.game.a.a(Long.valueOf(jOptLong), null, null, null, null), getSingleton().getActivity());
                    return;
                }
                return;
            }
            if (str.equals("VIEW_MY_FEED")) {
                org.greenrobot.eventbus.c.a().c(new q("MY_FEED_TAG", zBV));
                return;
            }
            if (str.equals("SEARCH_GAMES")) {
                q qVar6 = new q("SEARCH_GAMES_TAG", zBV);
                qVar6.a(str2);
                org.greenrobot.eventbus.c.a().c(qVar6);
                return;
            }
            if (str.equals("GAMES_SEE_ALL")) {
                q qVar7 = new q("GAMES_SEE_ALL_TAG", zBV);
                qVar7.a(str2);
                org.greenrobot.eventbus.c.a().c(qVar7);
                return;
            }
            if (str.equals("VIEW_SUB_PAGE_IN_MORE")) {
                if ("Catalog".equals(str2)) {
                    str3 = "CATALOG_TAG";
                } else if ("BuildersClub".equals(str2)) {
                    new com.roblox.client.j.a(this, "tabMore").a();
                    str3 = null;
                } else if ("Profile".equals(str2)) {
                    str3 = "PROFILE_TAG";
                } else if ("Friends".equals(str2)) {
                    str3 = "FRIENDS_TAG";
                } else {
                    str3 = "Groups".equals(str2) ? "GROUPS_TAG" : null;
                }
                if (str3 != null) {
                    org.greenrobot.eventbus.c.a().c(new q(str3));
                    return;
                }
                return;
            }
            if (str.equals("ACTION_LOG_OUT")) {
                new com.roblox.client.j.b(this).b();
            } else if (str.equals("LUA_HOME_PAGE_LOADED")) {
                com.roblox.client.b.d.a().c(true);
            }
        }
    }

    public void syncTextboxTextAndCursorPosition() {
        if (this.mGlEditTextView != null) {
            if (com.roblox.client.b.bi()) {
                NativeGLInterface.syncTextboxTextAndCursorPosition2(this.mGlEditTextView.getText().toString(), this.mGlEditTextView.getSelectionStart());
            } else {
                NativeGLInterface.syncTextboxTextAndCursorPosition(this.mGlEditTextView.getText().toString(), this.mGlEditTextView.getSelectionStart());
            }
        }
    }
}
