package com.roblox.client;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v7.app.b;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class m extends android.support.v4.app.g {
    public final String DIALOG_HEIGHT_ARG = "dialogHeight";
    public final String DIALOG_WIDTH_ARG = "dialogWidth";
    public final String DIALOG_GRAVITY_ARG = "dialogGravity";
    public final String DIALOG_OFFSET_Y_ARG = "dialogOffsetY";
    public final String DIALOG_OFFSET_X_ARG = "dialogOffsetX";
    protected int mDialogHeight = 0;
    protected int mDialogWidth = 0;
    protected int mDialogGravity = 0;
    protected int mDialogOffsetY = 0;
    protected int mDialogOffsetX = 0;

    public boolean alertIfNetworkNotConnected() {
        android.support.v4.app.h activity = getActivity();
        if (activity instanceof k) {
            return ((k) activity).p();
        }
        Log.w("roblox.app", "The activity containing this fragment must be of type RobloxActivity!");
        return false;
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mDialogHeight = arguments.getInt("dialogHeight", 0);
            this.mDialogWidth = arguments.getInt("dialogWidth", 0);
            this.mDialogGravity = arguments.getInt("dialogGravity", 0);
            this.mDialogOffsetY = arguments.getInt("dialogOffsetY", 0);
            this.mDialogOffsetX = arguments.getInt("dialogOffsetX", 0);
        }
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                if (this.mDialogHeight != 0) {
                    window.setLayout(this.mDialogWidth != 0 ? this.mDialogWidth : -2, this.mDialogHeight);
                }
                window.setGravity(this.mDialogGravity);
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.y = this.mDialogOffsetY;
                attributes.x = this.mDialogOffsetX;
                window.setAttributes(attributes);
            }
            dialog.setCanceledOnTouchOutside(true);
        }
    }

    public void alertMessageFromServerOkButton(String str) {
        android.support.v4.app.h activity = getActivity();
        if (activity instanceof l) {
            ((l) activity).c(str);
        }
    }

    public void alertOk(int i) {
        android.support.v4.app.h activity = getActivity();
        if (activity instanceof l) {
            ((l) activity).c(i);
        }
    }

    public void alertOkWithDismissListener(int i, DialogInterface.OnDismissListener onDismissListener) {
        android.support.v4.app.h activity = getActivity();
        if (activity instanceof l) {
            ((l) activity).a(i, onDismissListener);
        }
    }

    public void alertFormatted(int i, Object... objArr) {
        android.support.v4.app.h activity = getActivity();
        if (activity instanceof l) {
            ((l) activity).a(i, objArr);
        }
    }

    public void showToast(int i, int i2) {
        android.support.v4.app.h activity = getActivity();
        if (activity instanceof l) {
            ((l) activity).a(i, i2);
        }
    }

    public synchronized void contactSupport(CharSequence charSequence) {
        android.support.v4.app.h activity = getActivity();
        if (activity != null) {
            android.support.v7.app.b bVarB = new b.a(activity).b();
            TextView textView = new TextView(activity);
            String string = activity.getString(R.string.CommonUI_Messages_Response_RobloxSupport);
            int iIndexOf = charSequence.toString().indexOf(string);
            com.roblox.client.util.a.b.a(textView, charSequence.toString(), new com.roblox.client.util.a.c(activity, null, string, iIndexOf, iIndexOf + string.length()));
            textView.setTextSize(20.0f);
            textView.setEllipsize(null);
            bVarB.a(textView, 150, 100, 150, 100);
            bVarB.setCanceledOnTouchOutside(true);
            try {
                bVarB.show();
            } catch (WindowManager.BadTokenException e) {
            }
        }
    }
}
