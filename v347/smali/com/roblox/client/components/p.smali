.class public Lcom/roblox/client/components/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x19

    .line 60
    invoke-static {p0, p1, v1, v1}, Lcom/roblox/client/p;->a(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    invoke-static {p0, p2, v1, v1}, Lcom/roblox/client/p;->a(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 66
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 67
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 68
    new-array v1, v5, [I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 70
    return-object v2
.end method

.method public static a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/roblox/client/components/p;->a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public static a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/roblox/client/components/p;->a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;Landroid/view/View$OnClickListener;Z)V

    .line 79
    return-void
.end method

.method public static a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;Landroid/view/View$OnClickListener;Z)V
    .locals 3

    .prologue
    const v2, 0x7f070725

    const/4 v1, 0x0

    .line 82
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isShowVisibleAge()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_3

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/roblox/client/RobloxSettings;->ageVisibilityText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 84
    if-eqz p2, :cond_2

    .line 85
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 89
    :goto_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :goto_2
    return-void

    :cond_1
    move-object v0, v1

    .line 83
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 91
    :cond_3
    if-eqz p2, :cond_4

    .line 92
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 96
    :goto_3
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public static b(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isShowVisibleAge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/roblox/client/RobloxSettings;->ageVisibilityText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
