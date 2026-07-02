package com.roblox.client;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.roblox.client.FragmentGlView;
import com.roblox.client.h.n;
import com.roblox.engine.components.NativeTextBoxInfo;
import com.roblox.engine.jni.NativeGLInterface;

/* JADX INFO: loaded from: classes.dex */
public class e extends FragmentGlView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NativeTextBoxInfo f6869a;

    @Override // com.roblox.client.FragmentGlView
    public boolean shouldRespectDatamodelOrientation() {
        return false;
    }

    @Override // com.roblox.client.FragmentGlView, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        c();
        getActivity().getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.roblox.client.e.1
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i) {
                e.this.c();
            }
        });
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // com.roblox.client.FragmentGlView
    protected FrameLayout initLoadingView(LayoutInflater layoutInflater, View view) {
        FrameLayout frameLayoutInitLoadingView = super.initLoadingView(layoutInflater, view);
        frameLayoutInitLoadingView.setBackgroundColor(-1);
        return frameLayoutInitLoadingView;
    }

    protected void a(long j) {
        this.mUIThreadHandler.postDelayed(new Runnable() { // from class: com.roblox.client.e.2
            @Override // java.lang.Runnable
            public void run() {
                e.this.getLoadingView().setVisibility(8);
            }
        }, j);
    }

    @Override // com.roblox.client.FragmentGlView, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (b.bl() && isVisible() && com.roblox.client.util.j.a(getContext())) {
            com.roblox.client.util.g.a("rbx.glview", "onStart() resumeRendering Lua App");
            resumeRenderingIfStopped();
        }
    }

    @Override // com.roblox.client.FragmentGlView, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        if (b.bl() && isVisible() && !com.roblox.client.util.j.a(getContext())) {
            com.roblox.client.util.g.a("rbx.glview", "onStop() stopRendering Lua App");
            stopRendering();
        }
    }

    @Override // com.roblox.client.FragmentGlView
    public void onGameLoaded(long j) {
        super.onGameLoaded(j);
        if (!isAdded()) {
            com.roblox.client.util.g.d("rbx.glview", "onGameLoaded() fragment not attached");
        } else if (this.mGlobalLayoutTool != null) {
            this.mGlobalLayoutTool.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        getActivity().getWindow().getDecorView().setSystemUiVisibility(256);
    }

    public void a() {
        stopDataModel();
    }

    @Override // com.roblox.client.FragmentGlView
    public void handleHideKeyboard() {
        super.handleHideKeyboard();
        this.f6869a = null;
    }

    @Override // com.roblox.client.FragmentGlView
    public void onLuaTextBoxChanged(final String str) {
        super.onLuaTextBoxChanged(str);
        this.mUIThreadHandler.post(new Runnable() { // from class: com.roblox.client.e.3
            @Override // java.lang.Runnable
            public void run() {
                e.this.mGlEditTextView.setText(str);
            }
        });
    }

    @Override // com.roblox.client.FragmentGlView
    protected RbxKeyboard getEditTextView(View view) {
        RbxKeyboard rbxKeyboard = (RbxKeyboard) view.findViewById(R.id.gl_edit_text);
        rbxKeyboard.setLayoutParams((FrameLayout.LayoutParams) rbxKeyboard.getLayoutParams());
        rbxKeyboard.setBackgroundColor(0);
        com.roblox.client.components.m.a(rbxKeyboard, getContext(), "SourceSansPro-Regular.ttf");
        return rbxKeyboard;
    }

    @Override // com.roblox.client.FragmentGlView
    public void onLuaTextBoxPositionChanged() {
        super.onLuaTextBoxPositionChanged();
        NativeTextBoxInfo nativeTextBoxInfoNativeGetTextBoxInfo = NativeGLInterface.nativeGetTextBoxInfo();
        if (nativeTextBoxInfoNativeGetTextBoxInfo != this.f6869a) {
            if (nativeTextBoxInfoNativeGetTextBoxInfo == null || !nativeTextBoxInfoNativeGetTextBoxInfo.equals(this.f6869a)) {
                this.f6869a = nativeTextBoxInfoNativeGetTextBoxInfo;
                this.mUIThreadHandler.post(new a(nativeTextBoxInfoNativeGetTextBoxInfo, this.mGlEditTextView));
            }
        }
    }

    @Override // com.roblox.client.FragmentGlView
    protected Runnable getShowKeyboardRunnable(boolean z, String str) {
        return new FragmentGlView.c(str, z) { // from class: com.roblox.client.e.4
            @Override // com.roblox.client.FragmentGlView.c
            void a(boolean z2) {
                if (z2) {
                    e.this.a(NativeGLInterface.nativeGetTextBoxInfo(), e.this.mGlEditTextView);
                }
            }
        };
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private NativeTextBoxInfo f6877b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private EditText f6878c;

        public a(NativeTextBoxInfo nativeTextBoxInfo, EditText editText) {
            this.f6877b = nativeTextBoxInfo;
            this.f6878c = editText;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.a(this.f6877b, this.f6878c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(NativeTextBoxInfo nativeTextBoxInfo, EditText editText) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) editText.getLayoutParams();
        float currentScreenDensity = getCurrentScreenDensity();
        float f = currentScreenDensity * (nativeTextBoxInfo != null ? nativeTextBoxInfo.x : 0.0f);
        float f2 = currentScreenDensity * (nativeTextBoxInfo != null ? nativeTextBoxInfo.y : 0.0f);
        float f3 = (nativeTextBoxInfo != null ? nativeTextBoxInfo.width : 0.0f) * currentScreenDensity;
        float f4 = nativeTextBoxInfo != null ? nativeTextBoxInfo.height : 0.0f;
        layoutParams.topMargin = (int) f2;
        layoutParams.width = (int) f3;
        layoutParams.height = (int) (f4 * currentScreenDensity);
        layoutParams.leftMargin = (int) f;
        editText.setLayoutParams(layoutParams);
        if (nativeTextBoxInfo != null) {
            editText.setTextSize(0, 0.795f * nativeTextBoxInfo.fontSize * currentScreenDensity);
            if (nativeTextBoxInfo.multiline) {
                if (editText.getInputType() != 131073) {
                    editText.setInputType(131073);
                    editText.setSelection(editText.getText().length());
                    return;
                }
                return;
            }
            if (editText.getInputType() != 1) {
                editText.setInputType(1);
                editText.setSelection(editText.getText().length());
            }
        }
    }

    protected void b() {
        long jV = b.v();
        if (!RobloxSettings.isUserInPreferencesList("PREF_NAME_CATALOG_PROMO_SHOWN", Long.toString(jV), com.roblox.client.i.h.a().b()) && jV > 0) {
            com.roblox.client.util.g.a("rbx.catalog", "getCatalogPromo() " + jV);
            com.roblox.client.i.g.a().a(new com.roblox.client.h.n(jV, new n.a() { // from class: com.roblox.client.e.5
                @Override // com.roblox.client.h.n.a
                public void a(boolean z, n.b bVar) {
                    com.roblox.client.util.g.a("rbx.catalog", "onAssetRetrieved() " + z);
                    if (z) {
                        e.this.a(bVar.a(), bVar.b(), bVar.c(), bVar.d());
                    }
                }
            }));
        }
    }

    protected void a(long j, String str, String str2, String str3) {
        String simpleName = com.roblox.client.f.a.class.getSimpleName();
        if (b.v() == j && isVisible() && isResumed() && !isRemoving() && getFragmentManager() != null && getFragmentManager().a(simpleName) == null) {
            com.roblox.client.util.g.a("rbx.catalog", "showPromo() title:" + str + " description:" + str2);
            com.roblox.client.f.a aVar = new com.roblox.client.f.a();
            aVar.setStyle(2, 0);
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.catalogPromoWidth);
            Bundle bundle = new Bundle();
            aVar.getClass();
            bundle.putInt("dialogWidth", dimensionPixelSize);
            aVar.getClass();
            bundle.putInt("dialogHeight", -2);
            bundle.putLong("assetId", j);
            bundle.putString("title", str);
            bundle.putString("description", str2);
            bundle.putString("thumbnail", str3);
            aVar.setArguments(bundle);
            aVar.show(getFragmentManager(), simpleName);
            RobloxSettings.putUserInPreferencesList("PREF_NAME_CATALOG_PROMO_SHOWN", Long.toString(j), com.roblox.client.i.h.a().b());
        }
    }
}
