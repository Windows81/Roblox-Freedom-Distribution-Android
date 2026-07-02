package android.support.v7.widget;

import android.content.Context;
import android.support.v7.a.a;
import android.support.v7.view.menu.h;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes.dex */
public class PopupMenu {
    private final View mAnchor;
    private final Context mContext;
    private View.OnTouchListener mDragListener;
    private final android.support.v7.view.menu.h mMenu;
    OnMenuItemClickListener mMenuItemClickListener;
    OnDismissListener mOnDismissListener;
    final android.support.v7.view.menu.n mPopup;

    public interface OnDismissListener {
        void onDismiss(PopupMenu popupMenu);
    }

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public PopupMenu(Context context, View view) {
        this(context, view, 0);
    }

    public PopupMenu(Context context, View view, int i) {
        this(context, view, i, a.C0032a.popupMenuStyle, 0);
    }

    public PopupMenu(Context context, View view, int i, int i2, int i3) {
        this.mContext = context;
        this.mAnchor = view;
        this.mMenu = new android.support.v7.view.menu.h(context);
        this.mMenu.a(new h.a() { // from class: android.support.v7.widget.PopupMenu.1
            @Override // android.support.v7.view.menu.h.a
            public boolean a(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
                if (PopupMenu.this.mMenuItemClickListener != null) {
                    return PopupMenu.this.mMenuItemClickListener.onMenuItemClick(menuItem);
                }
                return false;
            }

            @Override // android.support.v7.view.menu.h.a
            public void a(android.support.v7.view.menu.h hVar) {
            }
        });
        this.mPopup = new android.support.v7.view.menu.n(context, this.mMenu, view, false, i2, i3);
        this.mPopup.a(i);
        this.mPopup.a(new PopupWindow.OnDismissListener() { // from class: android.support.v7.widget.PopupMenu.2
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                if (PopupMenu.this.mOnDismissListener != null) {
                    PopupMenu.this.mOnDismissListener.onDismiss(PopupMenu.this);
                }
            }
        });
    }

    public void setGravity(int i) {
        this.mPopup.a(i);
    }

    public int getGravity() {
        return this.mPopup.a();
    }

    public View.OnTouchListener getDragToOpenListener() {
        if (this.mDragListener == null) {
            this.mDragListener = new ForwardingListener(this.mAnchor) { // from class: android.support.v7.widget.PopupMenu.3
                @Override // android.support.v7.widget.ForwardingListener
                protected boolean onForwardingStarted() {
                    PopupMenu.this.show();
                    return true;
                }

                @Override // android.support.v7.widget.ForwardingListener
                protected boolean onForwardingStopped() {
                    PopupMenu.this.dismiss();
                    return true;
                }

                @Override // android.support.v7.widget.ForwardingListener
                public android.support.v7.view.menu.s getPopup() {
                    return PopupMenu.this.mPopup.c();
                }
            };
        }
        return this.mDragListener;
    }

    public Menu getMenu() {
        return this.mMenu;
    }

    public MenuInflater getMenuInflater() {
        return new android.support.v7.view.g(this.mContext);
    }

    public void inflate(int i) {
        getMenuInflater().inflate(i, this.mMenu);
    }

    public void show() {
        this.mPopup.b();
    }

    public void dismiss() {
        this.mPopup.e();
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mMenuItemClickListener = onMenuItemClickListener;
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }
}
